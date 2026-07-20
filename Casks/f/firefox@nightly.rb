cask "firefox@nightly" do
  version "155.0a1,2026-07-20-17-50-03"

  language "ca" do
    sha256 "da42fb6b803cd71aa4e5b2d273d960df8fc69b6de9156a3ef1d423ecc107fce9"
    "ca"
  end
  language "cs" do
    sha256 "87c11aae8fdc63a10c4a2a538e9edbf05cbd4fdb7b11322332dd8a68d4a07c2b"
    "cs"
  end
  language "de" do
    sha256 "4d4875232e65ba6304cb6a81f2f815148fece6284c4a52b96332bc03bc62ffaa"
    "de"
  end
  language "en-CA" do
    sha256 "fda25f46b46342184e9339700edc428800712da0ae738f173e9064d554afaec6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6ec34f43b4eee3c3885f2e3a74858eabbe95c37736c40b1067c9513fbfdd2c94"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7adaf535018c6bd122730316b76810297ec86cbaa64281c32abc2366c722330e"
    "en-US"
  end
  language "es" do
    sha256 "5076c016a5178e0b809363afd47925935aee3c3ad4fadda4d839fbd4fb82122b"
    "es-ES"
  end
  language "fr" do
    sha256 "f016fda5b8752eaef2cfe8ca9db829c74ac4f82a1a53f37cd1ab790a9e126eb1"
    "fr"
  end
  language "it" do
    sha256 "e66fca76a14f4b6c19fa798748bdf5152c85125fe22ade3b52942a3a44d50365"
    "it"
  end
  language "ja" do
    sha256 "25ed1a00ce69cc1e404e25a1f7406192025c2a7f05e0255eb93da4564d17602d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6224513405779590708e3b78d8579112066671352ec3cce88a0c0cfd57c2f3a0"
    "ko"
  end
  language "nl" do
    sha256 "c0bccfacf8434eeb9a914085f0415c315a3d59ac35cdebf18a431ec6f7c066c4"
    "nl"
  end
  language "pt-BR" do
    sha256 "bf818e44b61c40b62d866994ec2f06742d64c556a28f76afd6b1c20981bb5a56"
    "pt-BR"
  end
  language "ru" do
    sha256 "ceb1b1aedb68a8d1975b7d99ed5cbc7389b218cef09a0163fd1d069c41494cd0"
    "ru"
  end
  language "uk" do
    sha256 "35ee17c540dd315a10d52883d7876f6e60f3563f4acb3ea7565f342877e71c5b"
    "uk"
  end
  language "zh-TW" do
    sha256 "2945acb8d0c1acbf4d401f9eef53d759ca3c18c0daf7671a254c29999f1efd7e"
    "zh-TW"
  end
  language "zh" do
    sha256 "c3af19668f7a344ba4b20124a758a3180f8ddaa340b98f1358ce36dee137c383"
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
