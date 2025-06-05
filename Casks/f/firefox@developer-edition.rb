cask "firefox@developer-edition" do
  version "140.0b5"

  language "ca" do
    sha256 "d21d03e2e4c44e5d0ac8d3b685232c1bf21ba52cdbbccad13016834bb735b306"
    "ca"
  end
  language "cs" do
    sha256 "3363713cfe06c13a43a9682cb4ba4b5af198474122d0cb1e35c4979c29a6865c"
    "cs"
  end
  language "de" do
    sha256 "55207c58022b9de2580800ae7f7dcf8885d4e500196bec60ae7c3895650b8be2"
    "de"
  end
  language "en-CA" do
    sha256 "1cd3a2bee71bfd98480dbb185a83fad901654f5d2cbbc8b82451916123d5a477"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0b52e0534c313ccb0b8ab92235a31d6a02e3d93ea0ed16d2226d6225f6c2e29c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0e18a2d29400dec3e9285e69d40a6fcd68df1fa59b15aa1e838d97ee95b633e1"
    "en-US"
  end
  language "es" do
    sha256 "d2ba722e1a28cac2c99a8573364b264545777cac53839859218bd5d64400d568"
    "es-ES"
  end
  language "fr" do
    sha256 "2530f98106899fcb75ef098929d07cb467c8c89c497205874d2285e88f23945f"
    "fr"
  end
  language "it" do
    sha256 "78db18219d6be4ea2edf84b8e2ede39140385c069a088291703c256da38ed7c9"
    "it"
  end
  language "ja" do
    sha256 "1ffc9a14b28e03415157d31078f798ee9c65a89040c5e97fa1997fc2ee5352be"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "70d12fe85b89d9834f9c7d0fd28959cbd839e5dc7ad0f2c07c794263fb0803bf"
    "ko"
  end
  language "nl" do
    sha256 "1ba0773d4d0871dc1cef8c43195f0b0a409cd65d60cd52bdfb2be343310ef8dd"
    "nl"
  end
  language "pt-BR" do
    sha256 "b3be4818299c53c21bdc5f969ef1ef25f63184d3d2f6b64818ed0953b133e48d"
    "pt-BR"
  end
  language "ru" do
    sha256 "44324c4801ee925644ea48529b303abda5bf1af1b0bafaa05b219bee85dd968e"
    "ru"
  end
  language "uk" do
    sha256 "c8dc6ff629b92cec90cd81664135988b89cda7e92885b206ffb36be6af97a5cc"
    "uk"
  end
  language "zh-TW" do
    sha256 "728aac576c19521a5cb35e1cf7eb8e82a5055a9dbd4cc31eaa1b0110db10846c"
    "zh-TW"
  end
  language "zh" do
    sha256 "c7a7cc8c0f059f44053b712aede9f86e9ebff927dc001dc89e78e844030bdf79"
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
