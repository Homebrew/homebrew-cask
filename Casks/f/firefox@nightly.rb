cask "firefox@nightly" do
  version "154.0a1,2026-07-07-09-21-53"

  language "ca" do
    sha256 "36ef44dfe9f90853f8bbd0a8a2a1bed4536f9e566157b1ad9efefe951292d42f"
    "ca"
  end
  language "cs" do
    sha256 "e2634a951e9c3df0cbb93d26881491a2d92a12d5c8073b7502fbed3bfa60cf01"
    "cs"
  end
  language "de" do
    sha256 "90d106309dea582a821f848692107e49ecac1246f77a99f565860f8f83dbb1cb"
    "de"
  end
  language "en-CA" do
    sha256 "386455ed85ffb03a666e276e8ab8e8694b6b9053ae54823ab89e7788f9888686"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7868e8115a4186649076290262aeac0321efcb5d5303f2c98584345b4712797b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8ede20937544cab1a73a34bc5572d32becb256fdb4562236461e3c73f536b727"
    "en-US"
  end
  language "es" do
    sha256 "d4d953de0d3c11d63cab41df9b435e6b65dd99abdc5eded04002a73966775288"
    "es-ES"
  end
  language "fr" do
    sha256 "dbe5f6959d6d30a4a96ea87f9eaec3c275cae65220e24488658d1acffd21dbaf"
    "fr"
  end
  language "it" do
    sha256 "ba2d945f51d39000326898d8c63e9b12af13b8dd6a3eba0bccb800499f1df357"
    "it"
  end
  language "ja" do
    sha256 "a40d0fe332816b75a7f66426106cdd26960cc4043bc1c1a94d3a681a5e072599"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8dcc527029a02c72b1fa21b339538abcf116a0d1b3dff6a50a3d1fdc2b0279ff"
    "ko"
  end
  language "nl" do
    sha256 "5960305a251e6281be7aefa20c8ab2062a368ac8870aae180e6cff1303e7aed4"
    "nl"
  end
  language "pt-BR" do
    sha256 "d2ce406802049eb80d61e654f9b58fe44f0fed6fbb31fb9a2076eee37d2df9b2"
    "pt-BR"
  end
  language "ru" do
    sha256 "0632fa1163ac1374eb927d3753b2083f5c822b244130530bc53b619d9a8f8685"
    "ru"
  end
  language "uk" do
    sha256 "3d186b178fbf26da1367423fa36dcd7bcfda1e57628303cbd4c40c56d95d7b56"
    "uk"
  end
  language "zh-TW" do
    sha256 "2a3ac164b1ae8a430506cc292065a294a59855caf89c035a740039e5126c4fa9"
    "zh-TW"
  end
  language "zh" do
    sha256 "d4d8fe150f646e07c23373fcbef963bb3e253d637b4db0731583cded3b27197b"
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
