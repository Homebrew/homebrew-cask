cask "firefox@nightly" do
  version "144.0a1,2025-09-03-09-33-30"

  language "ca" do
    sha256 "186ac174f7147bb1f3801a62ebcae240c5a63d7cef71fa113fa093d29a538dbf"
    "ca"
  end
  language "cs" do
    sha256 "7748dfe75ac3bf5478925a49b6d0fd540922dee3a2e4271d390590f8cc3b115e"
    "cs"
  end
  language "de" do
    sha256 "87e66c6db92bfcb1f3aece7680cbd4a453a3f8d63e092487fe56b3360e9f8f76"
    "de"
  end
  language "en-CA" do
    sha256 "29e570f1c553645b0f01e2a958327c2b2fcaa4fbad276e2de6f0ea717271c426"
    "en-CA"
  end
  language "en-GB" do
    sha256 "12d18c4e3ad7afed9d0a94c6fd69c6e2dadee20a7075e1ce96e6517cb9bf5901"
    "en-GB"
  end
  language "en", default: true do
    sha256 "89a85d7e40fd36894a92c3863921e5feacb305c7184949b7968735f45978afe6"
    "en-US"
  end
  language "es" do
    sha256 "a4d9d1dfe7c0da788694ce9208706c3b1ea2bc51136746b3d2cf3df90135de28"
    "es-ES"
  end
  language "fr" do
    sha256 "a726201255cd4116ef689bdd907719a6c4e83087e59bbf001934035964b4a07f"
    "fr"
  end
  language "it" do
    sha256 "023c41303c8a3dd9ff2b3dfa2222031394a84b5e16a4fd82ed73a2d49d8cfbde"
    "it"
  end
  language "ja" do
    sha256 "113e522690f7fbb7d96f44e548bfe3f65e73b99b793bfb07751dfd5b68378e17"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "899122bc57fa570d36fe539f36f9782e7c7b047d7d99ef8749c1e16a69056643"
    "ko"
  end
  language "nl" do
    sha256 "6510b571f5d12e3fd3391b8c80c1abc925cbaa5f4491b97926f114c864c47e2e"
    "nl"
  end
  language "pt-BR" do
    sha256 "3bc2b7e367887a53006f7f84ba342927a798d5ff7b6feb840e0a2cde0af7e357"
    "pt-BR"
  end
  language "ru" do
    sha256 "7f4227009e8301d7ad1063aceedade358ac143bd13f9eff948fb4e3216dd0040"
    "ru"
  end
  language "uk" do
    sha256 "4ab2cb8a2cdfb6e2e8283753d382b3a3d94bb96548c3ecb274e7349956e961d9"
    "uk"
  end
  language "zh-TW" do
    sha256 "a30e99959d052a6d2c1c6f461b44b5e94449c135367392118a71b8b6463c6113"
    "zh-TW"
  end
  language "zh" do
    sha256 "ebec6d70617612f700545997b3228971a7378a8c0a0c0fa54ddd652ee9d218c3"
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
