cask "firefox@nightly" do
  version "143.0a1,2025-08-13-09-10-44"

  language "ca" do
    sha256 "45435181c389439cb73345885bd1bf495ddb1ff3440d467787a7864f7911f6fe"
    "ca"
  end
  language "cs" do
    sha256 "53ff5899a7ed1f414089f272acc6a33f6ca3d90cfdeceacee74b8746c29e0bc2"
    "cs"
  end
  language "de" do
    sha256 "a7bd14e8a963fdc03341521297d486b3bcea31848e89bedf2e0ac3b558e90060"
    "de"
  end
  language "en-CA" do
    sha256 "25186bafea435f78507dfbc4fb9222045509884a94fbbea34eb677bc952ab633"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b2a05585004a4eca4298beec911c95cb7a69f0e082c416e156738dfb92b2887f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e9b44b24ad6bddf92481e24b75398a2f21c9ce05273fbbb7144ecb742a60538c"
    "en-US"
  end
  language "es" do
    sha256 "780617484718f9a1170e28c63ab5823528aa2e17c2eee7ac8b9c144a4ce1570f"
    "es-ES"
  end
  language "fr" do
    sha256 "074bc1df85413802136543096f3281159b97a2a8f3e5151cddf1a68eb7820a67"
    "fr"
  end
  language "it" do
    sha256 "d97b0f8c9870db0915554136889a09babde19fc8ba14f95bbe78499320cf5ae1"
    "it"
  end
  language "ja" do
    sha256 "eba23737d41dba5dd89f25b7b3d48508ba5cb8e71ca497e0cdcc1df31565e974"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f29eb474d5002e753df2f10f795701bbaa5e1c92976c7ef66ace5427011c7e2b"
    "ko"
  end
  language "nl" do
    sha256 "201f977ad386c4eb6774779116b81e56342eef9fe7873924e1f4625878b8c1e0"
    "nl"
  end
  language "pt-BR" do
    sha256 "cb0f13b9c3049be1d555d071ead259b606a089f393e992f7c59c6d5ccc96e567"
    "pt-BR"
  end
  language "ru" do
    sha256 "82e9484276665f4a3d6134e781813576e982065a5e69663e0058723d128b4544"
    "ru"
  end
  language "uk" do
    sha256 "e163ad78330c5b11ab35cd9f8fab622cd73411bc6e2d317427650b9ae1b4c26d"
    "uk"
  end
  language "zh-TW" do
    sha256 "abb1b807676b0243e5a28e0080684260390756798e29baac49655b859ffb9f0c"
    "zh-TW"
  end
  language "zh" do
    sha256 "e79ddc8bfac019c7aa0c9bf473cd0075ca211d86962e626b1c4903958077579a"
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
