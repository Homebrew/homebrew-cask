cask "firefox" do
  version "82.0"

  language "cs" do
    sha256 "9391bcd89ce5f24d6b5cee61f4029a3385d67b7f5fc4df64368e0e18681d056e"
    "cs"
  end
  language "de" do
    sha256 "efe8b4510b43a2f732ea148df4bc056dddb73ca53e1bcb5b4b230221c454b80f"
    "de"
  end
  language "en-GB" do
    sha256 "b916b528c447cefec99914c55afbfd087c47b0ef881d1fb3825a4127e4e73043"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5b651f2fa3c2d267c23184d29b6e6237af290575168e416ecef23128d94e8d5b"
    "en-US"
  end
  language "eo" do
    sha256 "7c3c28c7314d79b801f9bdf83d7a9b0e846add1932dd54a0f7495bec6ea7cd13"
    "eo"
  end
  language "es-AR" do
    sha256 "66960f46613ed819dc39e4f875b54e8cc42ae5e75cbfe28d9fb71615f941fab4"
    "es-AR"
  end
  language "es-CL" do
    sha256 "aedae7820758001c7940c22c025830e43e66e5d5059e8a3346c2edeac0e70429"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b3b054ced160dcc9e3c0b3bab4faef4e47ecb58cfb0c1935d06dd99f6475d961"
    "es-ES"
  end
  language "fi" do
    sha256 "e0fd895c54896809759825970d4322d3e6016a95705bd16706b7a0e8194dfa77"
    "fi"
  end
  language "fr" do
    sha256 "6e00339e50e7e1156bcdef913c6cae8442110844a69db38d5c2aee45d11ccb50"
    "fr"
  end
  language "gl" do
    sha256 "fafd13205e7b68d901c589eea4727d0229ee6a2398e25f435d822b0306b5f9aa"
    "gl"
  end
  language "in" do
    sha256 "76c2a06bce6f30c5afc8a215ba360ffc452c8ba81b5dd5bc85b4b13f0365f375"
    "hi-IN"
  end
  language "it" do
    sha256 "512d24d111f4da60bf88439d75dc8490b8b6b1c19befef8ce28f965c9b91d457"
    "it"
  end
  language "ja" do
    sha256 "ab70662b70a446035c26afa0a7b96db6d478f53b64f5030c808e185a384eb680"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "90868481ffe407775fc55490803dcac9b69a3c085f5031d981ec8b4959ac0ba7"
    "ko"
  end
  language "nl" do
    sha256 "7af3e4baf2bae085d759dfc9aeec5285509045ba38a156655bb3cdb332fbdd11"
    "nl"
  end
  language "pl" do
    sha256 "62e17a70cecb23fbab6be66f9ef30b74e631e88020fd500f4029cdcd89227c33"
    "pl"
  end
  language "pt-BR" do
    sha256 "956c09e57aafe9b15637ba911a1e55b3e4d125e1ee2641ae7c71791a313159bb"
    "pt-BR"
  end
  language "pt" do
    sha256 "c7699459265e9b05d0eaeab5b18abac3e68c2fdd682eed3e773e9c5079994e57"
    "pt-PT"
  end
  language "ru" do
    sha256 "ff2112ca7537cf44596dc3f79d87a89fc1180c85214d141cb8398062a0e5d1eb"
    "ru"
  end
  language "tr" do
    sha256 "08fde45887664567279a9534f75d97a1838336531f0b051417834724c04f2a30"
    "tr"
  end
  language "uk" do
    sha256 "d70bd992f570c249061945da2173cf5cc12a5d31d077099bd1103ded42780fd5"
    "uk"
  end
  language "zh-TW" do
    sha256 "c7e06ed1cb0be2f03993b31f63c112af64a98f9efc2285a33353e3d33854bc7a"
    "zh-TW"
  end
  language "zh" do
    sha256 "a276e07f110c02f9bb459bff3c9c4150f60176995ce1a29a4155f1b59eaf8b2f"
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
