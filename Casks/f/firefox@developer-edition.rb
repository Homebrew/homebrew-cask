cask "firefox@developer-edition" do
  version "129.0b1"

  language "ca" do
    sha256 "92e317eb8379ed75bd571eac01e6e0f38e665ffa5bddbbefa53e25288bb59a4b"
    "ca"
  end
  language "cs" do
    sha256 "5168bbd4e0b384ddeffc94f7ce404d5a67ad711268cbc426592e2a1af3ed33a2"
    "cs"
  end
  language "de" do
    sha256 "d6b563f1b9d1b17c13712f85f89bbdab28b48b78f26c08795694f6ac2390f95c"
    "de"
  end
  language "en-CA" do
    sha256 "17605743bb1781cb58e7f99438a3ea761e465d6baa9a88f86806d161db791c7b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "01e158b356d538208071f54e85246d62bc0a8bf72372a5d147bc16ea0716e7cd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8891dcf6f561d36c1e82531eaf0926c3c2747368c9f6194194e5ac1e6af0e055"
    "en-US"
  end
  language "es" do
    sha256 "2e93efc0295da893fea0a03d2897c1ff740871ffe4779f64fe341ca370ae305d"
    "es-ES"
  end
  language "fr" do
    sha256 "0a0b328652d904368f31169c73815df1a31bc7ffcba6196e990923d8e0746e6f"
    "fr"
  end
  language "it" do
    sha256 "638e0118a74e68e1af531a0ac503cfa834fa49c4bab24ef99494dc00ac5fa636"
    "it"
  end
  language "nl" do
    sha256 "0b759fb4c3abf91f4b180a395fcfae1847ed5ea80c0188ee50895e413b8b7b9b"
    "nl"
  end
  language "ja" do
    sha256 "87da8c0dab5f16f5c159fde9a5fa02a2e32de509dfeaa015c85b9d74733cf366"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "ab4a5b5ba7aa9d246bf33bb5dcf8b3095d64193fac75ab3f7d4167f413ba4d3c"
    "pt-BR"
  end
  language "ko" do
    sha256 "d7a19374feba6f0e7c4bbd9df714cd2f701be093d2ecf5d14b8e67ec66fb5a97"
    "ko"
  end
  language "ru" do
    sha256 "0c9f2c7396f99b1ebcd7389a50972cedb48a5a49656f8d4f80b9fe1aff5e6c8b"
    "ru"
  end
  language "uk" do
    sha256 "0aa49328bc9ceeaa08e0eac5e67c00a9e1e48c15946055516248ca3f352b9576"
    "uk"
  end
  language "zh-TW" do
    sha256 "3c18228e6ff4e90356a751c2dcab4fbe997a4eae9ce6b4ab9b82e07279f06e3b"
    "zh-TW"
  end
  language "zh" do
    sha256 "591e73641b067b7f6ae8cbe47e78e627e4016e9043e95b507d64cbde24f61640"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

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
