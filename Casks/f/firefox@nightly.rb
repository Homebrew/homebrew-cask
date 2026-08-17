cask "firefox@nightly" do
  version "156.0a1,2026-08-16-21-49-04"

  language "ca" do
    sha256 "69c9043f8f496c558bd7b53feb5727e46f8720f99cbc28ae6a8e7a7c844edaa0"
    "ca"
  end
  language "cs" do
    sha256 "d5944beb1302c820915e8e855ff8818f526de293bf3404392edff2a35f11637e"
    "cs"
  end
  language "de" do
    sha256 "ba8ec56b2e77d8ff0ee73c83db67506aa2c46baca80d14e162574dc316292142"
    "de"
  end
  language "en-CA" do
    sha256 "430d0eb67bea0ee2c4a2d78dbf0ae53d9f129be4ccb5676b057bf0687f5d836d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4b6f112eafa1826eccc7ca8ae573e2e748c74a082afa0d4858d800fde14a0455"
    "en-GB"
  end
  language "en", default: true do
    sha256 "338b297c7e439e126b26da02fb454a83ad1c0be32c151b9904be21838dd2e8d7"
    "en-US"
  end
  language "es" do
    sha256 "9c7f24605a6bace6f6446af3ff1178361c9a1905b7e186113a6045e1f08ed076"
    "es-ES"
  end
  language "fr" do
    sha256 "c48aaafdfb54f2894285f55773236f32482bf4f4ad45630664c41d80370209cc"
    "fr"
  end
  language "it" do
    sha256 "7bb181880c26a12212451c7d608c86463593394c0d31aab8ce5d54b650b2bd71"
    "it"
  end
  language "ja" do
    sha256 "99e8b6399a8347b97965a3a7459c807c399ab5c353bf0a5098474870c2de589a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "993f726449c026b2155a3751053a8ed3c81a2bafec418ce9da2dcbc671a76201"
    "ko"
  end
  language "nl" do
    sha256 "8e9e18ad83043c63033ac552f9e60155bda7c9902950b956a5d2c1a5a5d0098c"
    "nl"
  end
  language "pt-BR" do
    sha256 "d01a6255595e32bc05e4806b089874eaa35130fab91d6c1d33ffb0101b8be5b2"
    "pt-BR"
  end
  language "ru" do
    sha256 "ee311657a6ab8f3ca737fe8ffa3165550b16d8aee09472be08629464888449dd"
    "ru"
  end
  language "uk" do
    sha256 "83d1566b37da2b4c4ac45b74651c7daf7bfb8e0755ddf794502587ee4c33ee7d"
    "uk"
  end
  language "zh-TW" do
    sha256 "5d7c3d7853b4e154d238c5fb88dff039e3dfcd1775594d1c33bfaf439fcb784a"
    "zh-TW"
  end
  language "zh" do
    sha256 "cf675b5a7d090a458e3d29110b11d47f5ec05ea3ff2cf9876458f34ff137178c"
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
