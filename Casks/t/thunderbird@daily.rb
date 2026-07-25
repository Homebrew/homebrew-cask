cask "thunderbird@daily" do
  version "155.0a1,2026-07-23-06-49-18"

  language "cs" do
    sha256 "0138c40aef17b1b68b8e9a34b4bfa3d913799b21ff12011901268c9cf81df1c5"
    "cs"
  end
  language "de" do
    sha256 "6712a623ffef7b0a135ca825543ae22d7e80a20fa224284a1e1073a9c5f50c1d"
    "de"
  end
  language "en-GB" do
    sha256 "88c2d1c07dfea9424b160354bcd7bb5354268090d1da63582a26475d1725665d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0699b07c6f58687427f9472761012c5ae543ef9989545a87fd3bc40982604293"
    "en-US"
  end
  language "fr" do
    sha256 "fbeb1b41e717b0b88ac0f75ae8e3469d8059e2e31cbdec9760c8e387961be845"
    "fr"
  end
  language "gl" do
    sha256 "5fc3080500755e378650d53fdfbdc3937dd78d380bccc161b0acb0c1c0c3e55c"
    "gl"
  end
  language "it" do
    sha256 "b806a335fa3cdaf79a357ed482d9c4e6e3736c62cf4019063aa623a0488877f5"
    "it"
  end
  language "ja" do
    sha256 "d10aa1f3100d4a1f9894255b05b272b58a99f98747129b2ece1c3b1a92c74592"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a420edcb113b8050d6ac1bc5ff02ff3691fb79aab4843a820cf4bb7c4e54025a"
    "nl"
  end
  language "pl" do
    sha256 "60fa04f2e8711c83a5b1ebeec08cc6c9e3bfe0e3bf5739d9d44e78a0735f759b"
    "pl"
  end
  language "pt" do
    sha256 "d31c8e30559c29f6dd791d4b5b472668aab16f15a84390c2181d6a75f3790219"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "602f46d37a595d053ceb8d0acf4502a4daac2559c94416633429366759f87acd"
    "pt-BR"
  end
  language "ru" do
    sha256 "68ade25a8f2efcc04b80cfc2cb00b4a7001ab128c974988969ac802499a37e29"
    "ru"
  end
  language "uk" do
    sha256 "a09696c7150915b3da8876ed8c8b2c2f33b3bcb9271eae0e3f9dd35da2e9ef27"
    "uk"
  end
  language "zh-TW" do
    sha256 "81bbabe6a128e74f26c504c9166d60dc4a5468cf0c6fe5b777fe8d17fcd33428"
    "zh-TW"
  end
  language "zh" do
    sha256 "b8cf13f41af0919fb5e662a3716172557087cf69cffdad34e638090d8ed7ed87"
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
