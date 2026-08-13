cask "firefox@nightly" do
  version "155.0a1,2026-08-13-09-53-18"

  language "ca" do
    sha256 "55ee179d27fbce9df4dba79818377ee6eec0fc036d821de7e575cd5b9b24f89b"
    "ca"
  end
  language "cs" do
    sha256 "3f90fdd428f3bb9bbe11564a149eadfde9e2b594802c441f80eea075c03c6999"
    "cs"
  end
  language "de" do
    sha256 "262d510420ca19ae59c0959ec42a6e926807a8978269ecfa204bf0fae94b601b"
    "de"
  end
  language "en-CA" do
    sha256 "cdfd1c8a4e36c958392d5a949e3fa7dfcd7b1ce3542c24d1674690d7293d9c90"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8910836f281300d7ee49a6078e1df173a37e7c51b15d2e19f900b93504724e0d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eacabe1183cd023b21e57811640d255cf9144342bf6b7f4c031563aad4f6ad46"
    "en-US"
  end
  language "es" do
    sha256 "69e859606a7ce8654cce67293ad43aecb5622cb74fcc0719c81806121fd922cf"
    "es-ES"
  end
  language "fr" do
    sha256 "20aac4d937846289ce92a2d5c65f10b242331ecd9f5b9637a99f0a2e96348bb8"
    "fr"
  end
  language "it" do
    sha256 "7e1693b5da326830a30e54ebeb7ec9f2f0603cbdad8e7b9142139295a94370d5"
    "it"
  end
  language "ja" do
    sha256 "57a2ee4bea5583ab492811b89e52340af0d215be449c152bff5aee38e2f5f4f2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "97e53075ad97baf7c04eec6cbac3a98219eb6286a0fe9ef2c2f6f252857b53d6"
    "ko"
  end
  language "nl" do
    sha256 "d1ee944d452aa8e02d95d8c6fe70fc57c6ccfa6e811f42241630b4ccc32fa802"
    "nl"
  end
  language "pt-BR" do
    sha256 "ba99cb608769a2c1601f3cd4fc4e236797e16710ddfd6e0ca9271e42c46c8c95"
    "pt-BR"
  end
  language "ru" do
    sha256 "776a5531d83be3e778d76439abc2bcfced5126936c59254b33d7c954cebfb8a0"
    "ru"
  end
  language "uk" do
    sha256 "9a74d36473390ec323fb28c9c8e5d326e1de9c80eb7280c8261a7128aad7818e"
    "uk"
  end
  language "zh-TW" do
    sha256 "7380496704e423d88fb506c737c9d2dcf5afdcea9be9914efbae301a9dff02a3"
    "zh-TW"
  end
  language "zh" do
    sha256 "ce10427722416d3a24e93381f49363d33aa1a9ecb24445f988beae6c0d012a45"
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
