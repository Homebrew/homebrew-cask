cask "firefox@nightly" do
  version "148.0a1,2026-01-02-21-20-01"

  language "ca" do
    sha256 "4d7d24789e686058f7f6a570288555c966b284574d19b2d0bb89577ca9b5b3b9"
    "ca"
  end
  language "cs" do
    sha256 "a50e3f0d14350c3decf9a04eacd54a7d1fa6838cc4575d14085ab1b2738a1972"
    "cs"
  end
  language "de" do
    sha256 "d426dc19a3fb1bb5e25fbbdfaddc956c7e39f25fe7e2ddafc2c58e370ba9ca09"
    "de"
  end
  language "en-CA" do
    sha256 "c3adcf083fe237a242599264ec7382b0c369448b9b9fd8432ea854f3f0ba802e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "98dacc2ed6134f1c417baefccb32c264d1721ee0ff8b38dfde6fc173819de64a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a2495ef5ced7ddc9ca52a0495ed687b00b45585c0ecb1500af17a00b02a4f09d"
    "en-US"
  end
  language "es" do
    sha256 "98bc2550aac1b6595eda7402cc124795d131a9fb14a07ead9579faba063ab4ef"
    "es-ES"
  end
  language "fr" do
    sha256 "1f07a52d23472f3fbeec01cacd071399ec91c5df865ab874ac0109f6548ad56e"
    "fr"
  end
  language "it" do
    sha256 "89903eba5222b6c4cedf4330db5f147901fe5e9fa5f3c15130eaa9c67db1c173"
    "it"
  end
  language "ja" do
    sha256 "35cad4f5b9e7a833a244f7b08ab94609c47e446e6cdbad1a16e452daefe761eb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "575bbfb45e7920963757882ea84c7d971127c44b6ab4982f24ee8956c5ec4035"
    "ko"
  end
  language "nl" do
    sha256 "751aa2539101a23f124867079adf3aba50624adda2e6d4d6641d0486dd2a96a9"
    "nl"
  end
  language "pt-BR" do
    sha256 "56adfb8426a04511d50ad72378d640230996beaa2bde2dc329ac8e47be28179e"
    "pt-BR"
  end
  language "ru" do
    sha256 "23768bbbc7834a6e729752924488ce60eb20b42c940bded4c6e63811913c8b35"
    "ru"
  end
  language "uk" do
    sha256 "f2492b921675b4446ae782f7ad0353db49d71d0a4207a1a7996df6ba7787e066"
    "uk"
  end
  language "zh-TW" do
    sha256 "969c23ba668da795fa0504461d3667490974c4212b2ba2a16c264a5ad1d0f3a7"
    "zh-TW"
  end
  language "zh" do
    sha256 "32f6b387f7ebf1d14944e3c4945bf52f02c2dd334b1200480fcbf054b792545c"
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
