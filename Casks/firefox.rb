cask "firefox" do
  version "94.0"

  language "cs" do
    sha256 "ed9fb333686a9db74ee7180e81fd09cc9a6b3de8afb3208e1ca95cb34a58ca60"
    "cs"
  end
  language "de" do
    sha256 "fbb2a7308215e1ca551837c211695d8a625b7ff042400900390e05f62bc93cbe"
    "de"
  end
  language "en-CA" do
    sha256 "bcabfec69991335f4b3ec2a4f4f751f659a1fd7f6e6a743659101bd58e5ac7f7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b18cb33b52c78d090832747c292e4da0e94777673ccfd3d2cae71d252a0364f5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e0cfa0a2ba3bb02928ea27a155733967979d6c947071756c77b3a7ec1de3ee68"
    "en-US"
  end
  language "eo" do
    sha256 "d7d930261551104219c915aee72029c487ed57dcdccea207c765cc7a0abf0a53"
    "eo"
  end
  language "es-AR" do
    sha256 "a271d0bfbe3bbeeb031f3b0a1c532b39db0c7a37b4c249040236ad022062f216"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ff7a52cacfeb729f338d1e5ac7652f985eea6c81a8ff98b712e634b6eab8db73"
    "es-CL"
  end
  language "es-ES" do
    sha256 "4563487a77c3ba9536f9e4ae7b470181e7fb956c4b4808ecab1998bd6b70fc18"
    "es-ES"
  end
  language "fi" do
    sha256 "ab441e9aad4c70a0aa4bad221b93b624268fde24137c3b8be514bf77764cee32"
    "fi"
  end
  language "fr" do
    sha256 "77031464a1581b0ec00b29f38e093ca1a2565e2d9ae7887d81f78a23e7fbeb8c"
    "fr"
  end
  language "gl" do
    sha256 "85e05f27fe4c857e9d17e26e4f38d8c6950ce4e10233e9d8384e8c997a092d6f"
    "gl"
  end
  language "in" do
    sha256 "4148cb9415baf3da318b2f1b110cbef9f8ac9b49a65ac5e0da9c1ae3b9763164"
    "hi-IN"
  end
  language "it" do
    sha256 "8f9f19d561a187b94b3cf18ca7f45819325f255f88a4d369167335cb06ce54de"
    "it"
  end
  language "ja" do
    sha256 "898ff22f23c74d35770ff4efd1a268abc8d73220fbfb13cc1fe092c14f7d0258"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7099ff76a311c2ec1bf157a1bf8bb73b4945f30c639f163bcc0ff7174ac3dd07"
    "ko"
  end
  language "nl" do
    sha256 "78208b1b1415a70e9be19d9b1d817c9aeefbeb78d99e42faf62c60f244bf15cc"
    "nl"
  end
  language "pl" do
    sha256 "31066ff478d7cedab2ad0ba578c858de330a788ffefb686f47c8c166f386f317"
    "pl"
  end
  language "pt-BR" do
    sha256 "ab55d137d3d928177ee5e6f94796eb9e0629c57d239e8d656a787971a570fe01"
    "pt-BR"
  end
  language "pt" do
    sha256 "0c5a566efe2825ee4fdc45a36bb5ca7c83618ab2093b71bded352eae90160290"
    "pt-PT"
  end
  language "ru" do
    sha256 "2b9f586ff9ff1f0113d38beda37ebac0cd479dccd3fffae2d0c7153e81191d92"
    "ru"
  end
  language "sv" do
    sha256 "3d68845e49798bf62be1408419655165ee2facbcbd73f3baddbb372e7229d6ee"
    "sv-SE"
  end
  language "tr" do
    sha256 "db89de863efb989ac4f9f889551913408f79deb8680cb508431a2d40e6961e82"
    "tr"
  end
  language "uk" do
    sha256 "c946470235230e1550bb4c294e88504defc03fbf37495deb4bf65100a9dfc278"
    "uk"
  end
  language "zh-TW" do
    sha256 "899562bab1477915d5f0f0a518b61b123883c04e04ceba563ef257d14387d708"
    "zh-TW"
  end
  language "zh" do
    sha256 "4d90613dc88e69555e2faf5aab7838b7ae2ee0403632425b805fba2365cda1f8"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
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
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
