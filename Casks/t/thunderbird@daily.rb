cask "thunderbird@daily" do
  version "142.0a1,2025-06-26-09-17-59"

  language "cs" do
    sha256 "ffa58df640ade0ea3e50f01e9348ea0a1a111f4cbceea116ffb77288878bde00"
    "cs"
  end
  language "de" do
    sha256 "f57fd3350bcb10feebc65eafc9c2a50a2a2fe647fe95fae7ec5b4cdc5f70c44b"
    "de"
  end
  language "en-GB" do
    sha256 "b85870daac364f6735083d00cb3403200d14c3f73acf4255751324b8bc886531"
    "en-GB"
  end
  language "en", default: true do
    sha256 "14d0affe931733942df3b0dd24a82a28cb1b6a1663eceaedc5a666f1c7bf7093"
    "en-US"
  end
  language "fr" do
    sha256 "9dbc83e1c73fabce9f1e6c9960fa59b483a2b9c6fc5dea0985ea4977eb997fd8"
    "fr"
  end
  language "gl" do
    sha256 "ad51d49cb589f069e8d0079052168d1ac1bba85e20025b55d0f8e7b051b23b6f"
    "gl"
  end
  language "it" do
    sha256 "f935a9ad8c79c591c15232c8e915f8fe54321de8ea8375598f3f1f54dc9c5d6b"
    "it"
  end
  language "ja" do
    sha256 "86c72c5f435e25d75b59bd69b3867e2d53c1a9d1410a8c4e745e6e1a52515be8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "38da9ed2018ba58b3ed7687763cb74ea18a3f2b792a327c2f87cfc2972e8de0b"
    "nl"
  end
  language "pl" do
    sha256 "315875242d99dfbb5df011849edf741946950327615c30fd2411f63196c51299"
    "pl"
  end
  language "pt" do
    sha256 "890cdfbb1ca95f9cc0e481a95fb5b7da5f4d64bc57415d0a97b8231f820d795a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "83c347e66264a5e80fb817221b914e1776351355454237b17fed8558cca4ac17"
    "pt-BR"
  end
  language "ru" do
    sha256 "6f7a5249e4daa1bb7b7d773406232364e41b68b891d8cf5d25a8a288d5b8189a"
    "ru"
  end
  language "uk" do
    sha256 "08fb6bec888a5d4aa6df910c10e9989cfd041e5b18d4a78f6b74df4168918430"
    "uk"
  end
  language "zh-TW" do
    sha256 "f490098ec694e8e6c85808def84b50a4e3a4ad249ac6b1cf8e75161adc09746a"
    "zh-TW"
  end
  language "zh" do
    sha256 "3e1f98fa23036f5d6ca00cb3232c68880242a0e94e439801b14ad72e1fd8ebf2"
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
