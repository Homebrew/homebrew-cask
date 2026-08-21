cask "firefox@nightly" do
  version "156.0a1,2026-08-20-21-48-44"

  language "ca" do
    sha256 "81f7524e3bc4d840b13a38f2ae777acc5f6d6eaf151ab8f51638dd07a851dcbc"
    "ca"
  end
  language "cs" do
    sha256 "dfaecb042a1333936aef947a63b42072867fd264a1fccfbaf5c404f80bd42502"
    "cs"
  end
  language "de" do
    sha256 "fceeba63e7f33c0511ac6f14d053ebeb6557e8808f8fb6eb07ce9eea19e68edf"
    "de"
  end
  language "en-CA" do
    sha256 "ce9c6aed8a0de74e23bb0c4d85dfea16c458a3a44ffb6972705d1ba2423e235e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ab997b89d2167ec8ab488e5f6e631e9d14b0531db364a4079d22e3e7b0932295"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f4fe27c93adf5b8336e114f77d7d236f9a72923f0b3bbdb7d6955e6d807e0d6c"
    "en-US"
  end
  language "es" do
    sha256 "47e39ed2a4e0f583cf3d628a4a2ccd881063fa40146147b2fef2b1cbd1c126c3"
    "es-ES"
  end
  language "fr" do
    sha256 "a2f62cd6ba0d9122a73ebce9b243e796d59a4448f524cb8919ea35170b9c2f18"
    "fr"
  end
  language "it" do
    sha256 "fe4141328423823e3cb2461c0486f7947e62e1fc55b41b53d9bd9f1382cd02c4"
    "it"
  end
  language "ja" do
    sha256 "d7e1ecaa0151092aab5b56c4424b93e54471b720cd0dc3ee848bdc489b1b0e95"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "49f33dad4616440076ead46a2cede21796406dafc552eda147e55a29d93c9a31"
    "ko"
  end
  language "nl" do
    sha256 "0926c2d4931438d2b3a5bb833a29caf06426c7686d66f26ba5b249a83beab2dc"
    "nl"
  end
  language "pt-BR" do
    sha256 "2adb7d0a1809d18cfcc0e85017f7f8d75040910021538ea2caabc40f99bccdbb"
    "pt-BR"
  end
  language "ru" do
    sha256 "cc5d91ad3e3cfd97ee7e9775844315955548d1dc9ac159ac160a76a0be1444b9"
    "ru"
  end
  language "uk" do
    sha256 "7f8b21218447a4ecbdf8433a09f2c6a5d7991f130caa829886ecfcffd7e695cd"
    "uk"
  end
  language "zh-TW" do
    sha256 "90f6ebe7ea1cc15ae46150c5c839cd88e0091eb1270b9c8189d5838c98149b53"
    "zh-TW"
  end
  language "zh" do
    sha256 "95b0336a00723a040ae168a5855250ba0844a48a0f45248d08f876c87cf3e736"
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
