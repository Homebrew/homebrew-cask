cask "firefox@nightly" do
  version "158.0a1,2026-09-16-13-36-58"

  language "ca" do
    sha256 "af8c9a10fb2f46534a0f94d6de69d241632fdc610078162abd8a58ac31898758"
    "ca"
  end
  language "cs" do
    sha256 "23a0feacccf306457863277848145f8cf84fd6a61f1ead4d764595cd69401220"
    "cs"
  end
  language "de" do
    sha256 "be14ddfef4c816f4a1e071fdcae81bf6c661f443b9da7f7e149af6529d4ca757"
    "de"
  end
  language "en-CA" do
    sha256 "232f154f3e6b665c445959f5767df7d987b61353e938a43cd0e006d64dd8ad60"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9b724efaf2ca56fb211807078fc74c279aebfa80d371c8c7e4b12851b0c22095"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6aac2444d1cec5945cb366478d5f737ae492445a088fc7537e32886a99d25367"
    "en-US"
  end
  language "es" do
    sha256 "5b6673640c94ba9c765d43a3701f72164e859ab5c7ed9fc02052d1db318d6f6d"
    "es-ES"
  end
  language "fr" do
    sha256 "9bbfed76181f763c04decc47bef440b0d4ea2f8a70abb0a63232975df8de6173"
    "fr"
  end
  language "it" do
    sha256 "ece3d115fb8bf95efba95ed49c79a504ea7afc83af4210d7559862542a8eca65"
    "it"
  end
  language "ja" do
    sha256 "8a4a91b8c5f958d089ece9240a3fa9566bc3488e9e256f4e948c8f7e45407583"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "aea2705f7ba1bde0dd3e152304be90f2288f1936917f1f02878093e6541a4e93"
    "ko"
  end
  language "nl" do
    sha256 "697376298a54405c45e0b803db3327d01f41bfb94bd9bd553fb0646ace8f5bfd"
    "nl"
  end
  language "pt-BR" do
    sha256 "4909176dc044e7b7d121aa99686aad5ace8dbf87cbcf64298d0799c1c8d4c4da"
    "pt-BR"
  end
  language "ru" do
    sha256 "329441cf7a924401649b5c4abc4242595a23a1655df28b87e2e401789d6f3fd6"
    "ru"
  end
  language "uk" do
    sha256 "f0113218b73c93d79e3b99b38cea779f83f050889f973039efac586333c5bfe0"
    "uk"
  end
  language "zh-TW" do
    sha256 "5099952c3b1e7497bbbfc926a9b7c405c6db295a5e98675261b45651d83eb011"
    "zh-TW"
  end
  language "zh" do
    sha256 "d4f8d5b2b0e66f21a59d533d32293769f4c08268629aa8d88c041a9da3a3fe79"
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
