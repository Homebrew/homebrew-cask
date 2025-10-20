cask "firefox@developer-edition" do
  version "145.0b3"

  language "ca" do
    sha256 "973461162a47a47583fa6c12156c8c9c7ba7c3217e2b96f2fd4816573ba60a48"
    "ca"
  end
  language "cs" do
    sha256 "a3a3e668b06410346d00d66aaeeeb13abb9ee9d42591acb34b3d45e0e5595387"
    "cs"
  end
  language "de" do
    sha256 "41e636aa0a6fb94cec3dd8cd1e1b24d8c6e9b23b49bf4277844ec7e096893321"
    "de"
  end
  language "en-CA" do
    sha256 "eacf901cf924a66cc98cb3203b878783e2f2158d92b526af2c16b076ab14de68"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6d805013f8416b76952c433350577bafab60e55a683a2a5888278a5f2a29cb7f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8b0fcc0ca94434aa48ea8cb86460f0c6133d86e94d7d910e54ec383317e43bc8"
    "en-US"
  end
  language "es" do
    sha256 "ef0a87b5a3db1f957065e47f49925bc1a9265a0f995c405b8a5282194b75cfb2"
    "es-ES"
  end
  language "fr" do
    sha256 "dc780569d2469006e4f0d43f46e21ac1ac7d930a2db511a493b5a789ee6a86c4"
    "fr"
  end
  language "it" do
    sha256 "0b0a7be114b5f677af4345273d58b18438cfd5416f7227da12896b55c7df26c6"
    "it"
  end
  language "ja" do
    sha256 "a8b230bc1be956e7086f25f3608eef9b862f3caae0931e8c0dc9204e001937a5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d7612041618bee139088fb8d5990a6219b4b968df04b133dc905abc1a4720f7e"
    "ko"
  end
  language "nl" do
    sha256 "283ca0b89c563922cfe65bd64f7c3a9858ee4d246e91bd8e15c6ef9549d8e5a4"
    "nl"
  end
  language "pt-BR" do
    sha256 "8718d3d251ae433d20a062c595862c172321b95a83bb1cc0823fb4ddaf6e7a39"
    "pt-BR"
  end
  language "ru" do
    sha256 "4ef6fb7dd25dff6e8f7efb2f41a016c8bfe6fd448dcf564381c0cdf7c1134c7e"
    "ru"
  end
  language "uk" do
    sha256 "83ce178e9a1c248420ce667c5d3bb5c737fbe16b608c6721a81d37b5950d5fd2"
    "uk"
  end
  language "zh-TW" do
    sha256 "81c5dd2c5dfc0faf7a7668fee8e0c913e2bd35abcb9505bd373b9ed9b070144e"
    "zh-TW"
  end
  language "zh" do
    sha256 "da1389a116bbfc6f4d6dd529730be5ef037562419537d776e84733056cc48404"
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
