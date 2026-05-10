cask "firefox@nightly" do
  version "152.0a1,2026-05-09-20-10-08"

  language "ca" do
    sha256 "c8f2ced4f1b56128da2e9ac9a97802ba62b0d48f0e8bb81aaa417acbca96b408"
    "ca"
  end
  language "cs" do
    sha256 "c20ba3f10d81a943eea0443a6c55948b5966f4f1673bf964e2c97a8788d51526"
    "cs"
  end
  language "de" do
    sha256 "b42b1f9398714dda0c0d64064efa49d5bbf11510ab5a50ca7f3ac3b3390ced83"
    "de"
  end
  language "en-CA" do
    sha256 "5bb4670dbac9fa31fa80a7fcf49cb8866dbd07e44e2076418d4bccae28e97ec4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cbd89f7dd94e34326650855a68a2369f399d39a6a74ba14af29202ca66765fb0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8de2b86843976b95f9f11f666f930b6265edc1bc1e961d6cdaaf9407e68da175"
    "en-US"
  end
  language "es" do
    sha256 "601e21bf20bd345b5c9dc4cc36b6a7025116b05866775d8e3ebd7251f01a8be4"
    "es-ES"
  end
  language "fr" do
    sha256 "402e302f84612f158759ddef0dba1871872a3836b655e992a22b2eb3e8bd5fed"
    "fr"
  end
  language "it" do
    sha256 "3755f07817ed96e816e1418db5a2bd5feb45f1fd9452b6f5a21b1ecc101a48ab"
    "it"
  end
  language "ja" do
    sha256 "1e227f750a7a2a459e0a4db152039d283b409a8c55bbce444ea29069c2dc12dc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ccd2cc1a61eb5b1f6062d2371bed70681ae547faf5d714d284db0decabbabe3a"
    "ko"
  end
  language "nl" do
    sha256 "37cfbc988643d554dba477c3913056529bc13ea4f2537bbc2bf32045502f3785"
    "nl"
  end
  language "pt-BR" do
    sha256 "60b6ad4f3611811a945a6f01398af441d1492ae091fd717e2cdf5edd4f0406b3"
    "pt-BR"
  end
  language "ru" do
    sha256 "5ccaacbd0f3d52cb2ab28fd36d9169684bd1db58053a92d4d1913f2be1f5b197"
    "ru"
  end
  language "uk" do
    sha256 "00da54e5a241307e1dff544db3e7b8c0ebe16a9f8b5fa10c28c04e8bac3799c9"
    "uk"
  end
  language "zh-TW" do
    sha256 "67f86e97355d1ca0dd1cab6d3f9a0491c3b50e76d3f5a7f2efa412e30793bfef"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a886fc4baca484f4fc28854eedf94fba165b506e8a0fc0728912141803e6d13"
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
