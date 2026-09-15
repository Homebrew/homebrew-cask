cask "firefox@nightly" do
  version "158.0a1,2026-09-15-09-16-05"

  language "ca" do
    sha256 "7b0b98162c80725e852dfb7e13e235ede22b3431acb0793ed27aec87322762f5"
    "ca"
  end
  language "cs" do
    sha256 "50c3b6cd021e61bc0698ad67fbf39e64fcc2feb0f4262141bc2cd83b077f767a"
    "cs"
  end
  language "de" do
    sha256 "9fc13db40b231595c1c7d1f873bc1d525bf5ffb7540887af0f2a3a5d2f991005"
    "de"
  end
  language "en-CA" do
    sha256 "aaa3e23dfe79f6fc85d176248e6286ab1fb57d3e520e386d0be930044fac689f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c8f299c19aaf59ea73ff7e4dab9fb6885c33ab21df71a4d79c81af8041f2ae47"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4e91332d10173201abe2368de3467c72284004b39944d1228a3d974fa224ddd3"
    "en-US"
  end
  language "es" do
    sha256 "11775ef13d01fcc6e01b8f77d7b90414ae4f5e19740898db3914d4e35a158104"
    "es-ES"
  end
  language "fr" do
    sha256 "128c574ecf3d3e3793dcfc3c477bb9c26314f96b8a73b53792ab931249708ffe"
    "fr"
  end
  language "it" do
    sha256 "507ad826e9d8f6b5c7b53ecd8ed9885c9cd569128c4eb94551903e880cf99d3f"
    "it"
  end
  language "ja" do
    sha256 "078bc1abf8d84386383b6fe8e3696bb3fd4cb661c01e289266ded4b3965b7f5b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "60da3e630248823e8777e062eb7937802e037c4b205e4f6a01bd256f7998e1a2"
    "ko"
  end
  language "nl" do
    sha256 "5a48156f0320e3ce869cda4a55c66f5b113d787467ad35d8b230aa423a62743a"
    "nl"
  end
  language "pt-BR" do
    sha256 "d8c6ae07b53bff571c548ad4d3d9fe0b630e44df9a71861a5beb043fa6ac7b38"
    "pt-BR"
  end
  language "ru" do
    sha256 "992ed78d4dc6a5f2c0e2c8828030e30a6d939dcdcbb6ec85dbab100c5537574a"
    "ru"
  end
  language "uk" do
    sha256 "b5e77aec1150ae2aaeb6de5c8252465cc04581c361eee43ce369c5063751fe97"
    "uk"
  end
  language "zh-TW" do
    sha256 "788ba3ca28dc96c2b4381028caf3bb9a54bab1487d291e6e7573173d861cd45c"
    "zh-TW"
  end
  language "zh" do
    sha256 "3539d283e4a3e93e6fbd24feab2fc3b81dd4582959a9c7a6bcbd05748bd799db"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Preferences/org.mozilla.nightly.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
