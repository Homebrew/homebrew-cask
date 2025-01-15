cask "firefox@beta" do
  version "135.0b5"

  language "cs" do
    sha256 "9151648849ec526a055353546c8f2a7f666736d268407d35136b9efcf94f4a8f"
    "cs"
  end
  language "de" do
    sha256 "e6c64daf21063cb29b43893bbe457df9180fb8bb5060e0b49acc45cda5d3b5b2"
    "de"
  end
  language "en-CA" do
    sha256 "8521266bd50fd9fe5cc1fdd5f6cc294de15c23626e2dd14b025e8b8188e9f8e1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "611785655f4749579ba85845839227387f2a265181006bc20430861d2d1901ff"
    "en-GB"
  end
  language "en", default: true do
    sha256 "aa7dc4ab671be420f8b64957ac753cf197e0b13306e5ec2128285570164395af"
    "en-US"
  end
  language "es-AR" do
    sha256 "40b7e57f7cea9ba5eaf76d64f2e183e262fb03d93dabd336e939e8a03b0ce84c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "fa95638cd3955fc5281484083ec6cd374e237279cb6729c443ebe8ff3e534020"
    "es-CL"
  end
  language "es-ES" do
    sha256 "dc035da7f376518c742d5cae09a12fdd7ef189ba46cdfedc41f278e3a1f07583"
    "es-ES"
  end
  language "fi" do
    sha256 "db2a8d7c8f8db29f6a12e80f81f30c3a1585752b9c14929c26d20933e39dec51"
    "fi"
  end
  language "fr" do
    sha256 "373a8a4a3cc16780226e79bdb6f67f4b64fcb58a27aa97e4e3da6bdcbb6eea84"
    "fr"
  end
  language "gl" do
    sha256 "e835856f5aad53ee33b13da261cd1fc09edd8ce2af639f7c328158faab89de83"
    "gl"
  end
  language "in" do
    sha256 "c2ab1224e323871c728d5048c6e32773937b35db043ba27deb64ce00c5335932"
    "hi-IN"
  end
  language "it" do
    sha256 "07d13e631fb365052d0954925f795cc34fe0d906fc26e0a5f74b320167dd92ba"
    "it"
  end
  language "ja" do
    sha256 "8b5dd735f1ada07cf96de90bf39da4b3893945f5134cab74de0b6ac7dd18d737"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5b85fb92578c65af2ec71f9287138c3a8766e13f08ec379f75867c2ba10254c1"
    "nl"
  end
  language "pl" do
    sha256 "96d967db176378d8d140f1e2251a7524985444333545c004d6ceaa778b1ade64"
    "pl"
  end
  language "pt-BR" do
    sha256 "f4c735d4b37d5f3d16544f9c9827d668b46af111d92363e9ec30e9377aecabff"
    "pt-BR"
  end
  language "pt" do
    sha256 "70a8edf57cd2fdc81fcb77c36e98183f30162cea7256ced976a0a2d9dc2cc76e"
    "pt-PT"
  end
  language "ru" do
    sha256 "8726f850c5bce03cf030a5b9e1c6e67fce512c126da6baba610f7897bb15024a"
    "ru"
  end
  language "uk" do
    sha256 "0cb4af349ad37ee0ad19a695e88b06f10b4670942ef2e91196904c0129aae285"
    "uk"
  end
  language "zh-TW" do
    sha256 "ffbec1a5d586685acb90c8e9e6fb5e054dec94133b967b1f485fe6b5f4de17d4"
    "zh-TW"
  end
  language "zh" do
    sha256 "460425ed32c54a5ea3bcfb38c68539ec6dd8d8cd57eb361c7cf8369aad899f4a"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on macos: ">= :catalina"

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
