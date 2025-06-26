cask "firefox@nightly" do
  version "142.0a1,2025-06-25-21-58-31"

  language "ca" do
    sha256 "9cab1583a314c611db57be1ddf3c680f08b3119904a308aa5346d36c6c9d752c"
    "ca"
  end
  language "cs" do
    sha256 "c19fc68a552612fb052eeab1b474baff7a01211adf68e919b5d7c3540366d584"
    "cs"
  end
  language "de" do
    sha256 "604dc5cce98008a3507327092a0c77df76e021bec2cc66fb47358c13b5376c79"
    "de"
  end
  language "en-CA" do
    sha256 "2371fdac1e43910ca7e52912196e99347eeaa7fa3765a71fa1d17c06c74bdf8a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "af121d7869681b05617fdaf0fb83e06ae0a15256127ac32e26f859e2c24198c8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "34ed9ca761ba127a00cd54ca9df409e365201a3b25ed62f94d8ee3199f03a7e3"
    "en-US"
  end
  language "es" do
    sha256 "8f7e8fc04aa515927bf7c3cea78121e5421c5bbf32667af0a06d82dfa8780e49"
    "es-ES"
  end
  language "fr" do
    sha256 "10a8d8126d11ca57295bb6ca54574f459a55c9baa837e9e4539434c7397c1d99"
    "fr"
  end
  language "it" do
    sha256 "447134077450e83388c50c956dbb35fc6321353697900b0c91a0d76ddae469aa"
    "it"
  end
  language "ja" do
    sha256 "d11ec088bf15eb720fb4e48b7ec2f824a42752b8f0a62deac33aca41cb6ea699"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0889e2ed9ba6548c054b2cb667bf8111c016bed69a1b5eea47e85a213f8ba8ef"
    "ko"
  end
  language "nl" do
    sha256 "a195368e93e22bf55e74fe45d3f4f44df93d98ceabb3059e37dcfde536d8f5d1"
    "nl"
  end
  language "pt-BR" do
    sha256 "f1b92f947653783a52fe5874a76729ea946f876cfc0b37dd420fd136040b4f27"
    "pt-BR"
  end
  language "ru" do
    sha256 "cd41a536e54894392befa2c3615b92f010e00d20e2bc9bd70e55f5270a4db3a2"
    "ru"
  end
  language "uk" do
    sha256 "61f21249ffd38ae36fe010a22d0c04c80f9b49344214953472b545f06359e879"
    "uk"
  end
  language "zh-TW" do
    sha256 "274efc2c3adc9ebb03f8f33a5444a0ac59a06ef4b5658424009d2cbeb954c7cd"
    "zh-TW"
  end
  language "zh" do
    sha256 "e6b45a67561c16f5f9bf4149465b3f9e329fee358ea4cf54039209114150e5a3"
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
