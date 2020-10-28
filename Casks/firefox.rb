cask "firefox" do
  version "82.0.2"

  language "cs" do
    sha256 "b49efcdc53d95cca7f8b26be7e78bca867fc683922af5618771d91004541551a"
    "cs"
  end
  language "de" do
    sha256 "e1903c5bca139c3c25b0f826b2e018915d385f1e2871624724a76d7d28b09183"
    "de"
  end
  language "en-GB" do
    sha256 "5739944bc4ad6a2dceb53ab6b40794cec92c855b49b3c89e983e9a45af5e0488"
    "en-GB"
  end
  language "en", default: true do
    sha256 "09368f133828b3a64748add77b73304f1e53df5102dba919447d6c4654ba0be0"
    "en-US"
  end
  language "eo" do
    sha256 "e30007aab74acaaafbfac9e2195ce5b5443b19903053539936239facee99dd03"
    "eo"
  end
  language "es-AR" do
    sha256 "c1062d74e52fd6a7771b31170940d76e72452cce07f62fbf7787a24afc6631a2"
    "es-AR"
  end
  language "es-CL" do
    sha256 "afee2539118474a59dfc53d657aa8bd8596085b3a4413c2a91564e6b38e57747"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c06b7c958dc4423f634dd1c4924bf4e981f0a17ad96555410c682a2fa1c41635"
    "es-ES"
  end
  language "fi" do
    sha256 "8a5f81c7bb2106be0c52d23fb0349efc814fd0455419fd139deee8a32c853f3a"
    "fi"
  end
  language "fr" do
    sha256 "ef43d805466c22dd111cbdf9c406269c845de1e8dda6054759b4fb3dc6ba1e80"
    "fr"
  end
  language "gl" do
    sha256 "bfbfccd12efdfbba992710bc6b277f6e489ab9c47d75f155704578757eb89cdb"
    "gl"
  end
  language "in" do
    sha256 "59bad3462f48b9554b21276035ae7536251e7c8d617a723b1e5cac4858b4c5cb"
    "hi-IN"
  end
  language "it" do
    sha256 "99e25f886a32b3797f67f584e37664dbd926435b8586810ab090541bde5ae6b5"
    "it"
  end
  language "ja" do
    sha256 "5605b277ef85deff342d9ee32001058e2ff3d931575734cee050325b0c72bb49"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9ba87bb9d1c83ab782b1ca8f344305ac3650c40108b4a3ec10ffe12bdc6f932e"
    "ko"
  end
  language "nl" do
    sha256 "48ffe8b9446798206ca335fbb19a6265589c6ef72507669b2df5bf9100b8f607"
    "nl"
  end
  language "pl" do
    sha256 "32475ff55caa8f8bd9d32c8ae94514895a0cad354c1c6a58706f2653ce580423"
    "pl"
  end
  language "pt-BR" do
    sha256 "e77f336743c3cc5d98677b93f9ecc55e74275bfa330487f39c502fae9866a7db"
    "pt-BR"
  end
  language "pt" do
    sha256 "cc2d634b9db3f66bc86f0d24d25629745c3d45cbbc5b69ef501aa4c02e016f2d"
    "pt-PT"
  end
  language "ru" do
    sha256 "4dab2d076738a8e08d5c324f356156fc7b93601b126531595f51681b85c74e31"
    "ru"
  end
  language "tr" do
    sha256 "ffabd1365860e0ae6e019d956a1ddd643ec3b53c17141ce45c0ced4de0ff8f31"
    "tr"
  end
  language "uk" do
    sha256 "7dfcf7c04225706fcdda5d7044609d21df0eb12c05532de7e640a093665fa942"
    "uk"
  end
  language "zh-TW" do
    sha256 "195090128e40b481bb5cf9fcfd3e62e885d670de2a4cadd302aa36d08c331821"
    "zh-TW"
  end
  language "zh" do
    sha256 "434512f450a98daf7a3863f147e312edcc056776fe86f384a9d17b774dc63756"
    "zh-CN"
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx"
  name "Mozilla Firefox"
  desc "Cross-platform web browser"
  homepage "https://www.mozilla.org/firefox/"

  auto_updates true
  conflicts_with cask: [
    "firefox-beta",
    "firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
