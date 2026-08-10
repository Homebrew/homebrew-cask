cask "firefox@nightly" do
  version "155.0a1,2026-08-10-15-48-37"

  language "ca" do
    sha256 "976f01a2b5ba6374eb8003b10c838c97b0f59e028c462cf8c6ad79fbd7e28c9a"
    "ca"
  end
  language "cs" do
    sha256 "c5dfbd9d606d6aa4b0cb8c9be8b5152de7f7af5742461f19ab7a8a0d8bacb09b"
    "cs"
  end
  language "de" do
    sha256 "60e2ccbf47e456c608038b885dbc38fb3396a785f3750912fe5391f01663e4cd"
    "de"
  end
  language "en-CA" do
    sha256 "e4a4ccb63ac01c95e9b808fa77889617c4a7545a13749cbc922492ae7bcff963"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4d84d8a1c0ddc9a21e8970e5cc93ef4211b634632d31ad533871e60fe4f3ff30"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a35a4543a9037af6b9551cb5a8f82b1433900955bce895ef2f9d493db8321228"
    "en-US"
  end
  language "es" do
    sha256 "54b3f0b07d4053676e8d10dba756d715847626fc68ec86a388077d299b119d09"
    "es-ES"
  end
  language "fr" do
    sha256 "3a75a86ccc7d380d54108670f61701821da5abd1db021a3efbdfa4293f6c89a4"
    "fr"
  end
  language "it" do
    sha256 "44cf5bde3242e89a017574d835f30d5c6343728e44593876068a8033b41821c8"
    "it"
  end
  language "ja" do
    sha256 "198013c18a91eaf796b1b3d4651612d2bb8587b3d35e4a73e98c480b83626b8b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "16f71a3c6d0ac57fdd049d61b6e56438f7e294c209a78cc3059e981d6af995aa"
    "ko"
  end
  language "nl" do
    sha256 "802efdc227506e893ca0ef9cba5a078eacaf88fd3b978ac383c5bbbbbaf769bc"
    "nl"
  end
  language "pt-BR" do
    sha256 "f20b225336cb06a02f5a4f836d2a1ed07cfea690a5b79df841449e92fef7db6c"
    "pt-BR"
  end
  language "ru" do
    sha256 "5d7400cc00e20422b9c72bf05237008e61c602051df899d0e3984c94b6422fba"
    "ru"
  end
  language "uk" do
    sha256 "dd80685f663d1b42a2997adbf0fa541b770e926b422763207d0d4144ab2a3fc1"
    "uk"
  end
  language "zh-TW" do
    sha256 "ada63ee4b09232c3ab492f97cefe72570cb2829893df4b5f827a52e53a3ef2c7"
    "zh-TW"
  end
  language "zh" do
    sha256 "19f7bda567701a2de347852fe03f604b195fa98d6607a6e459c4956ac0ceca83"
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
