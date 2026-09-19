cask "firefox@nightly" do
  version "158.0a1,2026-09-19-09-06-01"

  language "ca" do
    sha256 "28361aad86ff99a6e77602128396711a3e781c7efbc363d88c7b938570b4e74a"
    "ca"
  end
  language "cs" do
    sha256 "8565815e0d0780c39792ab4e4d855158a51721038d7a232d9cfd119317e1b424"
    "cs"
  end
  language "de" do
    sha256 "f42a6f35e3122dae99fcc50e10b3ed51008aebfdb28dde134dff5a4fc53379b2"
    "de"
  end
  language "en-CA" do
    sha256 "3d83339b093bb3c6195bbdadef82327c88c5a07cae685572a22923ede3159829"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4ed537d1a027c7aa93d2c24c6e7e6c5aaf3df16dcd9633ac5f9aab93f4cff02b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f29a7bbce9c5a331056714d285cc1ba9b0353158482109b6779460a7381b380e"
    "en-US"
  end
  language "es" do
    sha256 "3ba9f50332d1cb633a3340952e0fbfb297ae7c0476e56a62586377cdfaece6d1"
    "es-ES"
  end
  language "fr" do
    sha256 "69fd7e6e06fec236246dc472f3652c8fad1c9f58a97e9f520910c5a88cd66ac7"
    "fr"
  end
  language "it" do
    sha256 "c2e337f8560e597c7cd48d98021beaa2a9f528eb7902c2aeb7079aa6d3444bc5"
    "it"
  end
  language "ja" do
    sha256 "f8c97bab712e6282eb68a6e68348c5ad0ee5c893603438bd626effccc1fb2e0d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e77a3afab080525224a7e74b803714006ded9edb1914067efba1f43b7366fa33"
    "ko"
  end
  language "nl" do
    sha256 "22f1180b6dfbee001416977a55164fc41466cb80164c9723355ce83ce2436f99"
    "nl"
  end
  language "pt-BR" do
    sha256 "4b78a4e362067b38bfd61c3a47ce9084f0acc30ed96409a54c26cdd95aaf7692"
    "pt-BR"
  end
  language "ru" do
    sha256 "9c8d09f447a098cd1be8493f2f5fbd395316c2dc89cb355f735b75899c4ac734"
    "ru"
  end
  language "uk" do
    sha256 "8c588eb3e7903351aef0182b5f44a56905cc91cf7f712322f08f932d1b338052"
    "uk"
  end
  language "zh-TW" do
    sha256 "1167e3406fcaae6d912aa1bf2e30412c40131fbddb96fecda84fc0aa4e748cfe"
    "zh-TW"
  end
  language "zh" do
    sha256 "30df1c97c47bf0139a7a89e6a697c42da2902b307c2b62ca5ffe5cdc13b96228"
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
