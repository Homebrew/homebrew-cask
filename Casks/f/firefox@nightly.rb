cask "firefox@nightly" do
  version "153.0a1,2026-06-01-08-43-12"

  language "ca" do
    sha256 "fece796f0b126a5b90a80c8fa5a640524285bd7b5062052fc37c9c0a663a860d"
    "ca"
  end
  language "cs" do
    sha256 "86343fc7a288778008874324861b56844dae2b895d3da216fdf34c5a2b460b05"
    "cs"
  end
  language "de" do
    sha256 "51df0dc849488b8827d517d6c8b0644e64596d096ff0bf57d1ef7914d955816f"
    "de"
  end
  language "en-CA" do
    sha256 "28418da65c93997799432b091d34c165ef2797bbcb816420f5439c2f01131687"
    "en-CA"
  end
  language "en-GB" do
    sha256 "348779664b2e81cbd037e79abaee9f1652752d4b316ed215b20c9ff5ddba5ac7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "59522799a7fae597b07ca110bdbf1c8fdf52b4c2c46f2e3183e56bf6f13fbadd"
    "en-US"
  end
  language "es" do
    sha256 "43f444ee99e7dd6af2caa121ab29215768137ff94105ba9243af03230348c8d0"
    "es-ES"
  end
  language "fr" do
    sha256 "69f3ea9855039ccd03c40d267ad271b0678e3bc3d58f3e2441c33b019923dc62"
    "fr"
  end
  language "it" do
    sha256 "907c496128538072f3fe98643b1a27f053256ad82edf00a6e321ce48aefb548d"
    "it"
  end
  language "ja" do
    sha256 "b4280502076dfa9cd9ef468c3c92473cedb3c5eb0e9efec6c77e68116dddc98b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d44a235cb817c58ad92f5fdbde8ced2104d05cebe3c80c95a978d0344627bf9c"
    "ko"
  end
  language "nl" do
    sha256 "de1b3f138c286442f47b6ab7b9fe0e65b2becb738297f672aeb04b961c98ffd0"
    "nl"
  end
  language "pt-BR" do
    sha256 "a7052d69f4475884c817b51b08b3d7b78fe6e7111b17a17869ee871d1a1bff8b"
    "pt-BR"
  end
  language "ru" do
    sha256 "0abf56573aa5d6473fe6ae3bf7f57ab5aa7286e1b7fa679fdab24cdbc70b5680"
    "ru"
  end
  language "uk" do
    sha256 "187c028e882cd7df23f015d92a9bccf883d71775777a25009f482600a2d7215b"
    "uk"
  end
  language "zh-TW" do
    sha256 "2b32680f5060695f593fec117b59cba6cfcc0365c302027aaa0fa6e92e74f3f4"
    "zh-TW"
  end
  language "zh" do
    sha256 "15ddf46878bf2514a7ae173562b51665431a0fc1cbb21262471169409f605fb0"
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
