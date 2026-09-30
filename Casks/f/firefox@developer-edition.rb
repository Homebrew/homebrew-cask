cask "firefox@developer-edition" do
  version "158.0b2"

  language "ca" do
    sha256 "55288ec75068f7344a8e30d07cbd6b21885cea34673e8b53b5390e9da4c6c3e7"
    "ca"
  end
  language "cs" do
    sha256 "51c158510f40b0dea0871a782447fe6b2bb312a135537197bf370aacb33c8f0a"
    "cs"
  end
  language "de" do
    sha256 "988c9ebf6ccf938b18e5e04f2b6f646d12a17429a39835837bf9ce886dcc5dbb"
    "de"
  end
  language "en-CA" do
    sha256 "e0fe3c329080eadf1f39a995fe5e79b8acd4b0f4e38a9dc378bee5bd0ff59ff7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "28d36ba4ce88bd6717a4e6733e6695ec87be21983a59b077b0bd4d98305abb75"
    "en-GB"
  end
  language "en", default: true do
    sha256 "854cb4380a658164a0478ea8a5c89f4e2608b803a17ce14e1e9fca97c8fcbec5"
    "en-US"
  end
  language "es" do
    sha256 "7e79ed64fd434fa603bf61d40e60275d0fcc6b79addda7c99ac4b56e64b10ea4"
    "es-ES"
  end
  language "fr" do
    sha256 "1428a1fcc76e55257b65593880f87a8ab1d0dbdca5cb88d5a4c574dac96c2d2f"
    "fr"
  end
  language "it" do
    sha256 "cdd16482002b3f73b8dc6f6d49028b55a9beb1f0a9a26ff3edc51846622367b2"
    "it"
  end
  language "ja" do
    sha256 "0842e8ba615d1525338de063173ba0d2498d9304e86c17939a8f1b34d555a2eb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "29dc51aac10b164918fa3876e9e36921fcf3d85eec2b745a94ba45d50c3bce64"
    "ko"
  end
  language "nl" do
    sha256 "588261defc3a4a69ef6176585ec525c44f884818529cc120c9bebedc98774371"
    "nl"
  end
  language "pt-BR" do
    sha256 "ad6ace07032cb7ca540eac4e7312552f85c97cac9511fdd7559b921a21072014"
    "pt-BR"
  end
  language "ru" do
    sha256 "67105576dc1a99a031a1bc1a2efc5d92d57dffe288521681ccd50d204e3b373f"
    "ru"
  end
  language "uk" do
    sha256 "a46dd325677dd993e77d6def6238e5bf6543ddc46495c84eb1f7e8f23059ae44"
    "uk"
  end
  language "zh-TW" do
    sha256 "a58b9021c2dbdb2934577237c4185609c6d14936653b53286d4daa98e18374ce"
    "zh-TW"
  end
  language "zh" do
    sha256 "677168bec1c5fa738359427b1ca26bb8c533a4c240da87900a1dd3ffef693c58"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
