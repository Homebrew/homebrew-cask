cask "firefox@nightly" do
  version "155.0a1,2026-08-02-09-20-52"

  language "ca" do
    sha256 "06119170da9d7b588fb54d4a57278c5e1e5e56618a1eadcada444db8d9c665a9"
    "ca"
  end
  language "cs" do
    sha256 "18693798281e5cc5f40d58d20de113880909c575bc3c8a401a4354241a03376d"
    "cs"
  end
  language "de" do
    sha256 "d850929c0d79fa0ee2b953a8e6a983abfa24f8d54135bbf5c3b86d796d39d9e7"
    "de"
  end
  language "en-CA" do
    sha256 "044743129bab866184b3a0ba5da25c063d82a9f1b6aa30309e81b0eb30fde8ca"
    "en-CA"
  end
  language "en-GB" do
    sha256 "01804716eef99a9dfc336100374b05b61cbe6dce8262fa45958385141f9f6d2f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "113c7abedd856dbb25257d1edd0e36d53dd169e32b21137f128b33db8c24f018"
    "en-US"
  end
  language "es" do
    sha256 "3828e0b38ec7c262ad0a969dd03b4f58fbac125273bee24fcdd6ced7dc02d210"
    "es-ES"
  end
  language "fr" do
    sha256 "44e37a4168cfdbf7d16613e04e2d7bdd7676d84b6b990687d277e87426e22788"
    "fr"
  end
  language "it" do
    sha256 "4b09f12cfdace80f03bdac3da9b337a6acf4832910e50db2c2cd897da99efecb"
    "it"
  end
  language "ja" do
    sha256 "474a9d858af2752b224ff7cad19635ac546ad3f9b764b0f663cfc9a3e6ff6fdb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bc294087f4e647944481a6bbe3f7af5724a3eae2e56f4a5d65b7dfda53782607"
    "ko"
  end
  language "nl" do
    sha256 "adf9cef99dcb42bee6675038c86ced5bd481fc197d371cc830f33f0576f50fbe"
    "nl"
  end
  language "pt-BR" do
    sha256 "0b207e5d307c7f2062c39a57d1438bf8af1ea14ce1a9e521f49174723a2ca035"
    "pt-BR"
  end
  language "ru" do
    sha256 "8388af62344c076cabef3090f5662a70a7a0e0845093d1ae414771292b27e425"
    "ru"
  end
  language "uk" do
    sha256 "db5e753f766bad8b2cada769fad7a87c65a7b0638ade07e523cae27f4ea8111a"
    "uk"
  end
  language "zh-TW" do
    sha256 "c6f46de39e14a960a4c2a48eba693f3094d151362ac0b82c6473d12b735aeefe"
    "zh-TW"
  end
  language "zh" do
    sha256 "f03fc216d2eee8515596d287b043f291daa9ca6ece62befdcda24ff17368c4b0"
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
