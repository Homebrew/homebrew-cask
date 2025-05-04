cask "thunderbird@daily" do
  version "140.0a1,2025-05-04-06-55-27"

  language "cs" do
    sha256 "7cab76199c6bae75eb1dfd4ab98946701b052c342b4e82fbc0df57a9a74a63d8"
    "cs"
  end
  language "de" do
    sha256 "e3a13bbcd4dda205806f61285d5c8e688f5b9b33b5c33df46b605ab9680373e3"
    "de"
  end
  language "en-GB" do
    sha256 "a2c5b6d8bbd77b7e965d5e5d80720c350607d7f6d191c713be984d8300453f42"
    "en-GB"
  end
  language "en", default: true do
    sha256 "da483fbcd3f82716f1261be49bb872b99b7d200ea60b86b9341cb3295f0347f3"
    "en-US"
  end
  language "fr" do
    sha256 "d953cadeb5f1a2e7783150ee4b93677d7435584787d64d7874e6c0aeb009d478"
    "fr"
  end
  language "gl" do
    sha256 "7d3faded30cf3fc6de32b8dcfd7ab09a0319fe33fb87a7b3da234dcb11066c12"
    "gl"
  end
  language "it" do
    sha256 "94f88eb073595f90bb2c68840dc0151dade7f55b3d8440ec54e12ecf19cb2de7"
    "it"
  end
  language "ja" do
    sha256 "bc8a52c31b72f10aebac740053719e4d6b2fffc362906868198657800f9e74fe"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d25a56549fd2389b731fa3c3ddcaf4fc1aba839d4af0bb076cb1e6ba14ac9f50"
    "nl"
  end
  language "pl" do
    sha256 "f50f2948511046ec6395c0b4aa7b3d86cc36db587505f2686eb59bc9e7df916f"
    "pl"
  end
  language "pt" do
    sha256 "09f4f95cef2cf47738964cd00e30896a86579a33383ea1ae950c95482aa46e95"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8f2c224a06766f0d8ddbcc04ed7e540a5dd42d44af2c8cb30136f1ee45211333"
    "pt-BR"
  end
  language "ru" do
    sha256 "6325de9257c587162afe626f657455936255e9da93d07d4c3f0b9505d30e4852"
    "ru"
  end
  language "uk" do
    sha256 "24faf7c96877a883d53b268c926d1fa9128f1e77a2180cbec4b76b55e5f0c850"
    "uk"
  end
  language "zh-TW" do
    sha256 "9aa02dea681508ef0270a1f805472d76cafbe2a506525a58225717bad5f895f1"
    "zh-TW"
  end
  language "zh" do
    sha256 "223d31b31504ca693031a189763d358a70694aa23fc1699b889cc9c501f578f2"
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
