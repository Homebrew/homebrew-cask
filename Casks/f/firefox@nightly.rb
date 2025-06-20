cask "firefox@nightly" do
  version "141.0a1,2025-06-20-09-08-48"

  language "ca" do
    sha256 "6fb38c8e74cc1a7b1f3c59634b9e15365576535589752ee2ddd00c3aa16be511"
    "ca"
  end
  language "cs" do
    sha256 "5cb0774ecbb76de1114978470ff6d3121e6ea0d8a106eca6bb01d5ffcd22a50b"
    "cs"
  end
  language "de" do
    sha256 "ed8e7a0d320bdee6ecd259139e7a56a578c905af5023735b96a6ec1a0626378d"
    "de"
  end
  language "en-CA" do
    sha256 "6b9fd1a5f44b31b240e6221a64c417cf55b6c883dde24b79b3d71785678204eb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ed53bbd79d3c6f746b2aa82d4fce2a2d2170098d317af5810991e8ac15741ca0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "99dfcb68297afd4fce6a23281850a4234a9517076919f328ac971a5633289059"
    "en-US"
  end
  language "es" do
    sha256 "472136d0819b0294d131e8a9e637b9e3932dfe70aea88d1b01c5ae1f88971dfc"
    "es-ES"
  end
  language "fr" do
    sha256 "35907db53b722314f5529e404f9238402d3bce7c6cd7cc75edb7062302ce953b"
    "fr"
  end
  language "it" do
    sha256 "e951a89743dbc88bab91b413ada761e45d45d495d929d7e37babdf33990df158"
    "it"
  end
  language "ja" do
    sha256 "b579d58aa1b4a9a28688c408b5dd29074838c6b324122aded623fbd7994fbb7f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f9e253c55533fe87538ef907c5fc45dfd31c47976f246a04cedfb6a4e99c6872"
    "ko"
  end
  language "nl" do
    sha256 "cf025ed5188b0a3d362f9b4f45ef7440ad7d394648eb9eef8cd99c17763f6e7e"
    "nl"
  end
  language "pt-BR" do
    sha256 "7d98a75985f72d495abd080f34a8a77b53b9fb7a63b6db4b3a37dbfde581caea"
    "pt-BR"
  end
  language "ru" do
    sha256 "57bc33fc46110c2bdcd7f3dea68a93d9ce2f293ce31dde6359c4e84a0e10b46c"
    "ru"
  end
  language "uk" do
    sha256 "3697d5606569b5cafbeda6154fefb6a9186349d4c98cdcabef960a095002a792"
    "uk"
  end
  language "zh-TW" do
    sha256 "fde7af7ec7f263e98bf19434af0b1463d6bab6f926d5b29e52d48b11cc200c24"
    "zh-TW"
  end
  language "zh" do
    sha256 "02593323bdb43202a5c739375eb29a3bbd4e62a7bba7e91bbbf18fca58f6f721"
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
