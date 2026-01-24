cask "firefox@nightly" do
  version "149.0a1,2026-01-24-08-57-15"

  language "ca" do
    sha256 "0848d3a5bf14f553366971ea1ac155e8615510ad4f418507919b9ff0c3defa74"
    "ca"
  end
  language "cs" do
    sha256 "2de76b1286d92c45141300b0592cbf956cc33091fffe3250a691d79f9455583c"
    "cs"
  end
  language "de" do
    sha256 "ef3acc113d8bca8def89b05144b1db0fd740c9b561684ec7464f4262d2622f6e"
    "de"
  end
  language "en-CA" do
    sha256 "7e1da6a34c08f72344e3f06066e513504720ca558a05250092e6cc2d513b0229"
    "en-CA"
  end
  language "en-GB" do
    sha256 "621407a53da6c9b1186c3fd2e7a79006618a51e8a38722605324dc23d929c713"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fd06c29199b6d33a20df80249917188343343ba4099a6f3fb34872fb50f70989"
    "en-US"
  end
  language "es" do
    sha256 "abecaa61e7d24664adf3eae94d2512e3f7e3b944517a04763e3be17c7e41f3f3"
    "es-ES"
  end
  language "fr" do
    sha256 "7f7d04e6d3dc40bb25cd8f21580941bec4eba139ccbdb2a5e42eb0e0dc0d285e"
    "fr"
  end
  language "it" do
    sha256 "b4c4e3a4a28af0b61741075d9432d58ce45e8f1e0363a46e48b8a36a3e10154b"
    "it"
  end
  language "ja" do
    sha256 "fe7efb497e527f6e74b3b783ea6d2a93a010b7f96105b8a02930d61877f974f2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5bc4d677190a8e9ef885088f5509fca34b9b873f45340020b1f544369e16008b"
    "ko"
  end
  language "nl" do
    sha256 "1519f81cfbce99bd6bf13ede66a530641684faefe6401208685478bd500ad9ec"
    "nl"
  end
  language "pt-BR" do
    sha256 "24db9962cc6ffc89bbc87ff348f224fbbf34a7cf6823457c8fc05835dd9b9a3b"
    "pt-BR"
  end
  language "ru" do
    sha256 "0553d51113fd0c8acd545819e7bd4a07efd1f6f8b5eda9f0490d6d2161e7956b"
    "ru"
  end
  language "uk" do
    sha256 "734679af35f503c3b3855e86cb9dfa2cad6da9c3ab8d1cde35a2772d62764782"
    "uk"
  end
  language "zh-TW" do
    sha256 "5718c5733bf4f467706f1003b85af85080e0b63f5c45b2762bda89d52e50132f"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a8544cbf3991bf3b7b40c9d4b64552443e7cacf9ca9a0b0ed664397e5831a9b"
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
