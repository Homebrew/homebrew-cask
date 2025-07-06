cask "firefox@nightly" do
  version "142.0a1,2025-07-05-21-15-51"

  language "ca" do
    sha256 "8b613191833b4256ebc1bd6827cb5dea73c09f8e40f90ca9db9159cc184ceffe"
    "ca"
  end
  language "cs" do
    sha256 "ce6d8ef5ee3d584e7423f799947df30e46c5b7ae95b1cb56eafd7620c9edb803"
    "cs"
  end
  language "de" do
    sha256 "b6609d4e92b0a3aa7bed7c3090b7663df12a02e4985213fae069a3c7afc07d14"
    "de"
  end
  language "en-CA" do
    sha256 "e1b6571ea486d779a6424864a863659202a6310e5ae04fd63da296e6aefb4913"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d55b65c65a1c99038ee2c4c9fbf809ed15439e9bf23c46d10eca514e6ec28319"
    "en-GB"
  end
  language "en", default: true do
    sha256 "11dbfca0a0760a1600f74c4caceaf53f54263661aac1204ce7bd9cb8cfb570a7"
    "en-US"
  end
  language "es" do
    sha256 "2a00e404d73cc255377718b67f6b03a390abd145cb21f0207d27ab8989ce1862"
    "es-ES"
  end
  language "fr" do
    sha256 "6760db23d85c4c00bcded223ffad22b43963973aa3d70fac70e4a6fa57fe9076"
    "fr"
  end
  language "it" do
    sha256 "8324921f29ac795fe6538804a9b9ef962500f6934d31c5496dfa17ba7730f91b"
    "it"
  end
  language "ja" do
    sha256 "01f701eb8598ba31e60b7fdfad0c5ccabcdd2136f665b8a98afa95b82f781f7b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "57a15b36ec4de14b2761b542d437e3728e4dd3d4b64270cee3ad50c613e91084"
    "ko"
  end
  language "nl" do
    sha256 "6fc08a9cebbf764911da1f5f58e5d52a97bd6c09da7dacf19a6621ec8a424312"
    "nl"
  end
  language "pt-BR" do
    sha256 "ab732962085706f1b06655b98360235bca11f4aeb1516f3723276b5e482191d0"
    "pt-BR"
  end
  language "ru" do
    sha256 "b985cd770ba1706c40efc1dd44a088b7f42046d8c41d4fd8ba0b9b64d1b9d5e6"
    "ru"
  end
  language "uk" do
    sha256 "674440148dc5a6323a97d28bdcd75f89add6cac912d6ef0e11228b475b282d8f"
    "uk"
  end
  language "zh-TW" do
    sha256 "e58a3d931d42bdbb654dc261e92fb0a1568f0399e2acb836481fe85f7f307627"
    "zh-TW"
  end
  language "zh" do
    sha256 "2bff22dceb1610c1b93b050608c091efa2e5c34bbd4aef47f56852902b68bcff"
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
  depends_on macos: ">= :catalina"

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
