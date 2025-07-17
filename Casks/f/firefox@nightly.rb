cask "firefox@nightly" do
  version "142.0a1,2025-07-16-21-45-35"

  language "ca" do
    sha256 "3edefa65878f7ff713cecd318f067c73f9ca4d0e3b001c84917640b87c12c3b2"
    "ca"
  end
  language "cs" do
    sha256 "9547daa95a79bdf588132a958034722535da4de2606de2a07413144ba94ca474"
    "cs"
  end
  language "de" do
    sha256 "e4007c9e376330aa5b2e265e0e525976b43b432e4226efd416d0a8a0bf0e2549"
    "de"
  end
  language "en-CA" do
    sha256 "d015bca1975c359bca75e1d60f5608cf68f3fdbd29d591b618c98f6f92340402"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f3d02f3fc53786e26c0d4dc6c81a8f5239468fd57d7cc7a6f31e19176b9e9294"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c163c9cf3b3b09e0df21fd972ca90792b7d63e584452c13024834ebb7e054846"
    "en-US"
  end
  language "es" do
    sha256 "9bf129c474e441325642db11c32b0a6073d88a1acfb8660c29fef433011a37a6"
    "es-ES"
  end
  language "fr" do
    sha256 "fa0aca73935001e9786eb25a59b505b46506b0a2aae4535a24bf82ae7944c61f"
    "fr"
  end
  language "it" do
    sha256 "0dbedc4446c210c2b386180cae412825a22205373a77ca482f27f472aecc7c01"
    "it"
  end
  language "ja" do
    sha256 "64a7eb4708e1b805f1110ea075c3c6613315bad7fa9e699482f13076470a825c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8226f0ff1f3069ec70fc7f5f40288c7c72009e5f5a499e28040dfd6616f26482"
    "ko"
  end
  language "nl" do
    sha256 "4c9a25acc2ccacc282af31b8448902f4d5fe8433590e51b78597afc88667ce67"
    "nl"
  end
  language "pt-BR" do
    sha256 "b883fff032a9178d43eaeaf57879c9b336f9081e0ee8f6308f59eb7d5a61aeab"
    "pt-BR"
  end
  language "ru" do
    sha256 "a0b59b5c1492024372f22e7a714b420f44a96639b005950ba477b7068a4958c1"
    "ru"
  end
  language "uk" do
    sha256 "92b076d1715eee0b3a6f841d6170106643d718f14e7782e6b765f4f67040b1ab"
    "uk"
  end
  language "zh-TW" do
    sha256 "a921841a6f97fa59b2b3b46deb7b0ad4d0f2f27571e7498ac185c586d854341c"
    "zh-TW"
  end
  language "zh" do
    sha256 "3bef1a52caa48c5d5cd3a98ffc77e3a44ba255d268c91f0f686ff4038cdb0922"
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
