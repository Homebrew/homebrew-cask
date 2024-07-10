cask "firefox@developer-edition" do
  version "129.0b2"

  language "ca" do
    sha256 "98a3fa14490450e96fce6e5881670dbac36f970af1801e4a19d9a05f07ea0c2a"
    "ca"
  end
  language "cs" do
    sha256 "519b69677630a8a9ff8ea1327652e83d543ea161f9446edfb0c8149933d1f8ef"
    "cs"
  end
  language "de" do
    sha256 "2d16468e61abecc9dc29ea854418bb81e76f9173ab6df5eec83a0e4407bed9c9"
    "de"
  end
  language "en-CA" do
    sha256 "f82cc7ff88775a51172bd22beb941a2b27e88d07aaee7ff7993d0d562ede4d3d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0254add289b5e4ee1efb6bc4172a98982e6e34d6a837b130704882dddc044afd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "883c7f3780c626ec71200f82a639e81bff74b4e619fb9d312b5b6f338ba8598a"
    "en-US"
  end
  language "es" do
    sha256 "c516a80ebbd3d42659118e186402ae271b261c71b14a09900249548bbd77da7a"
    "es-ES"
  end
  language "fr" do
    sha256 "c94fe71b3e4884a83781732651ae722eb896490d9f1be42bb7b56b98bce52a2b"
    "fr"
  end
  language "it" do
    sha256 "9604c946007427163c26ee482355d390e1f56874ca82e4ce8c261262300c25d1"
    "it"
  end
  language "nl" do
    sha256 "c297b970a400f4e23219acbdefa2ea939a8891dc480b8621076eb14ec71e9bc8"
    "nl"
  end
  language "ja" do
    sha256 "001176205c5359d643f85998fa4e7b6af6190d975da8e5487315bb643dd5b58e"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "340520a412471df10880e831921fcd42750eeb227a97a05367e7f95cb6a1c60b"
    "pt-BR"
  end
  language "ko" do
    sha256 "570fa42ec42d836f0d7d5c5585c693378f9a4e218ac04fda914ff1acced6b046"
    "ko"
  end
  language "ru" do
    sha256 "4e80d67280c69d2646b93c999c286c28cb4b71cfdb9d759820fc0e499c4dffea"
    "ru"
  end
  language "uk" do
    sha256 "e3a71987e3e14624ac8ca8b982d69369e18625089e7828b453dd8c098a63a568"
    "uk"
  end
  language "zh-TW" do
    sha256 "9541f8fb03900e7e7f13535f4dc065a3d2f628d18b902720d46802cf81c66469"
    "zh-TW"
  end
  language "zh" do
    sha256 "40fdf5d35a205a832e3077c19d566b755da2539134fb4a9b93760e9342337ec4"
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
