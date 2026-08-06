cask "thunderbird@daily" do
  version "155.0a1,2026-08-06-10-18-11"

  language "cs" do
    sha256 "3df3e72aa6aa07067932440f1cf2c8b35a8856a7b633d0863ee41ff8fdd820b5"
    "cs"
  end
  language "de" do
    sha256 "ba0b6867d6703a3af2df204910e6229cccf84d85ae94e2a663f9db00fbf4f319"
    "de"
  end
  language "en-GB" do
    sha256 "0bc8ef56462831f466c09843953b5a8a52aa426156ef59417dba192094dad69e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9e80cf19c7e9210abf5c0cc1f878b5d3db004ab3db6ef9cb8118e8450df5be0a"
    "en-US"
  end
  language "fr" do
    sha256 "118e02436377fc3018c1641c607dc40863a9cc11137a39fc0408c6acbaa435ae"
    "fr"
  end
  language "gl" do
    sha256 "5598d35d1dc4caddd2aa8be1e2a2724676c8ca7bbde9ef472dba5dbbc194fb42"
    "gl"
  end
  language "it" do
    sha256 "97ff779ecd346297bc43a7843fa16592d3c156beb6ed37c3cd8e289a9cc42682"
    "it"
  end
  language "ja" do
    sha256 "2c105925294bd9390d2265aac25e1bac2004a1b1da814debb6546e47ddf971d7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7d00e83809c66645dcb85a90787d3494eb19dc1093951d1ee290340551fdb76c"
    "nl"
  end
  language "pl" do
    sha256 "f5be042fa2e06c313649b59ef4350bc05e78fd7aadb39743068c30372d53a2aa"
    "pl"
  end
  language "pt" do
    sha256 "73c849de98c25ad9f05b8d2b234dd55f134b6421d3459dc65bb83187eb43b9d5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "22f6ae53be89e6805ce1da20513c68e3963833132886293dce7988b80c9e022a"
    "pt-BR"
  end
  language "ru" do
    sha256 "9ecba7969ba31337846b2b4785e974a15dc54e708b70e3d58b9f82090aea3521"
    "ru"
  end
  language "uk" do
    sha256 "57b0ea17deb1ef51e627acf9b2f32644a9a7797d8df50ee70920c4f1ba1941e0"
    "uk"
  end
  language "zh-TW" do
    sha256 "afc76a0e7e9dc5c5622f63bdb7002ed98ea7276d773b8d12f0128ab584f99d87"
    "zh-TW"
  end
  language "zh" do
    sha256 "316fd83ee25288322232b41d9e6f56655894db88e2136cf173c80ba6b069198c"
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
  depends_on :macos

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
