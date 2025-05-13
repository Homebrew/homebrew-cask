cask "thunderbird@daily" do
  version "140.0a1,2025-05-13-09-55-27"

  language "cs" do
    sha256 "3c4be5382274d5d82164012871e87f90057547e6983d8a2727c61b4c1a8cd4ad"
    "cs"
  end
  language "de" do
    sha256 "8b8f22a48587bd7665cb202ba31cdd77e5666ab9d600ff0a40a6427a7e9829db"
    "de"
  end
  language "en-GB" do
    sha256 "d29f25f687e2bad3b61f83a830eac0ad5a0b5bf8db676f06467982301811c347"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b641630ec47ef9753dd2b80cc926f5e273ade3c65bd8d64ef92954728d9961cd"
    "en-US"
  end
  language "fr" do
    sha256 "dc88052a248f05ab80327919744bcda3bb2970a65a57ddfeb7a3bbd5582a2f87"
    "fr"
  end
  language "gl" do
    sha256 "8935b69586b8ef56d849192acf1e029229b8b4c5f851684bf1d6e1de60063487"
    "gl"
  end
  language "it" do
    sha256 "b0ebf355184d651eacce39bc999c370eaa56b6851d8550cd06abb4d1efc089be"
    "it"
  end
  language "ja" do
    sha256 "61e0e231ef961130514275bf412824d1004bd7bc5a9cc83cb732f3c471f1bc8b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8f0be217b971435ebc92e46dd8618ac1e951674350032b9c1a2c681958075ca6"
    "nl"
  end
  language "pl" do
    sha256 "b2bfd3c41c7abe0b99665cb497d3d04432d42d681d937e7e34a36e77a10a9edf"
    "pl"
  end
  language "pt" do
    sha256 "5f0a3a23a504e34f4ac8337db17436e9b8814fab382fd286afaceb73b66ece15"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "01f97975a2830b901410d4d6ad51def5f352ddd06c8f5cd966b76fdd605ce3de"
    "pt-BR"
  end
  language "ru" do
    sha256 "ceefe2c54dd130c5fe6627ad5bbff301dc6f8406d644fa0154ca4e4332b2869c"
    "ru"
  end
  language "uk" do
    sha256 "1b846b26e0fa6a41c72b2227e439cf0576cd0f6c1cfdc22ece8d4aa60540f5e1"
    "uk"
  end
  language "zh-TW" do
    sha256 "04c8c46ab68253b88076eb0d615961c0c0b656281c7689059da7128ab5adef6a"
    "zh-TW"
  end
  language "zh" do
    sha256 "ff74345ab394bee89ed0c5d3db939bacf1197f1c990f2febdf2150057bfa8b86"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Thunderbird Daily.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
