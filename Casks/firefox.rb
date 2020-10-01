cask "firefox" do
  version "81.0.1"

  language "cs" do
    sha256 "dba48f3fd65c4587e1eea2c7a14961123a7417d87aa004299c51611325c492e1"
    "cs"
  end
  language "de" do
    sha256 "4ae1f92b5abd75464cec4791af57bca84d29f0ff3a76a3469efa6c7f8d10ce19"
    "de"
  end
  language "en-GB" do
    sha256 "44ce4070461daa344cb5ed17b507542d573eb8e27f0d6a3cb06e40beba135736"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ab23191e777ce46deee5869807ecfd63ebcf33a78fd7aeb9fe8e326d4748a428"
    "en-US"
  end
  language "eo" do
    sha256 "ff4687c5e850a09efe9dc05c17f4b03e4cc33d1e5e4c9c2d2b8c85923b0cf492"
    "eo"
  end
  language "es-AR" do
    sha256 "3f649809a2572813f9ee36e4224290aa11321ac44a24325c80cc201dc58d2ba7"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3886c58ff407a7e78354b23cb26911d11204e0cb2a07ba38ed1cd215d5b0f9d9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "af414599528d3aed987a5d4b72c29ea5014b86e59617c4ab6468221cbf973ba0"
    "es-ES"
  end
  language "fi" do
    sha256 "b8e265d6b1c0df5fa6675d973bd6321c0f885907c2d5d69772889e2385bc6a14"
    "fi"
  end
  language "fr" do
    sha256 "4ccb10434ba6216be6d50ad9b235d96f03cfc7cb8112d8a46c73a08865684357"
    "fr"
  end
  language "gl" do
    sha256 "b932ba80e0cbe63ff454b3b1fdf16afa0dbdfbf129109f342a296351390a68a7"
    "gl"
  end
  language "in" do
    sha256 "62510d547baf1c394a427544d02a96935e3d64e4bff39959e2ec19de44f20d9c"
    "hi-IN"
  end
  language "it" do
    sha256 "97a6a240013bcb8f0ea2e3c320c7dd37fd269be0e2d6fd2a6c30c2b17268e8ce"
    "it"
  end
  language "ja" do
    sha256 "a07334dfb62067aaac4f8b92b6dffd75908c93a439ac80e8ac17033e4ef2361a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "69ee42a5e6047af39fa5d5373b713c08415e936369f57cf08f47a61f5f99aa8f"
    "ko"
  end
  language "nl" do
    sha256 "2ec29239240cca52ecb823c19c8d59fb7650e4f509e10a529f93b4dc8d6fc8c1"
    "nl"
  end
  language "pl" do
    sha256 "c2ab0d63315f852abf71b04f79e056d3aab0297df1ef7e8ce3ef636aa7fb9e0f"
    "pl"
  end
  language "pt-BR" do
    sha256 "e871467394fe786e6f4d75cd1668f745f519a239255ecbd19ccfcf998055563a"
    "pt-BR"
  end
  language "pt" do
    sha256 "bd2b95a5db68e24e43abe32b1c687d18b8e28c408b6aa9dd4db4ab002a245afd"
    "pt-PT"
  end
  language "ru" do
    sha256 "d6a609a90da8859c2614613ab49cf9eb990fdaf22c5a8f8c0727c7af6cd5e061"
    "ru"
  end
  language "tr" do
    sha256 "379322314ed69e8e1630186da5542855cf23f386a5f04ee5f0f82ac799467865"
    "tr"
  end
  language "uk" do
    sha256 "1a6f82291d995dd0a70c0e883a473944fa02680d512aa5ddb5a797ee6e00d97b"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa11d2f941e8b73a36745aae706a8d10943d9afe10dad3ebc0310f5cc2887633"
    "zh-TW"
  end
  language "zh" do
    sha256 "147d40cda6fe3baa6896f92ba322cdb2144bdbd3535060eaf6b746a3439b4058"
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
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Preferences/org.mozilla.firefox.plist",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
