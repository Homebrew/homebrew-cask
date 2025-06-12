cask "thunderbird@daily" do
  version "141.0a1,2025-06-12-10-57-09"

  language "cs" do
    sha256 "877e3cf105d7dcab66cd9f438e171411eb16363442329700b12108a7cd8c5881"
    "cs"
  end
  language "de" do
    sha256 "8396e632b4950ecca284e915842f851f0ba4fd23e568b29706e970751fd3ce78"
    "de"
  end
  language "en-GB" do
    sha256 "5027ace7606214515eae5c00961f111b16b5af39ab866897a041104f2d0db316"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9523f115cbf22de9c58d18853e0830d04aa44708cc1bffe50b9d32bc40495db7"
    "en-US"
  end
  language "fr" do
    sha256 "b33da9870e56047725f236ed9823b79ae7b6c84e5da98e5528e3f7467268a4b5"
    "fr"
  end
  language "gl" do
    sha256 "a5a39a5682fd46f92b3f08563b15e08c24a9f8213f9871eb5131b4d7e64da2fb"
    "gl"
  end
  language "it" do
    sha256 "4524a32bc4f728f44bd2cb48039ca026bda613f8bb584e14e6368d7fd6b98018"
    "it"
  end
  language "ja" do
    sha256 "5ab5177f855ca42f5d97342b4169cdccee08ff2c2aa3c83226a4c252ffd5344d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dd1be9e48f7e0a3ab07c4fb9254f4a42d0117e454f42f5067780866ee5ac756d"
    "nl"
  end
  language "pl" do
    sha256 "72a8b8c932dfac4542959981f7fd17f06f3587139ad727f4a427b2a07033560c"
    "pl"
  end
  language "pt" do
    sha256 "2805b5bc8256b7679ba7da7c735627fbba698c5263806c69e069bd3237474484"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "66ad42683e6f6c6fc7a753404ee1b76d23e260ea219fd1f1dcdf8af3ec5c439e"
    "pt-BR"
  end
  language "ru" do
    sha256 "93c23e831b24397c29f6cfbb5e049db6b9b6e99234923a8dd552e6072c507036"
    "ru"
  end
  language "uk" do
    sha256 "330437acaa812fb583e227df5871353dff837a8c16e6122318bf7740f9bbd4f4"
    "uk"
  end
  language "zh-TW" do
    sha256 "d27be2694ac23275535ef7d5379c5f93e1afe32e9eb57f7812a4983c418f2368"
    "zh-TW"
  end
  language "zh" do
    sha256 "49409d1de78b494db4477ba66743a172957b53ec09824d83e03fd9079107a69e"
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
