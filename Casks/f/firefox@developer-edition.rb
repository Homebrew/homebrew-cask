cask "firefox@developer-edition" do
  version "139.0b5"

  language "ca" do
    sha256 "76fb31cd116d03e2c55e7ec3b481ad570c0dbab212d89f086d12529698853428"
    "ca"
  end
  language "cs" do
    sha256 "15f37cbd840ebdea61c1d0dd394afd79379737ad6c2657b3247825500f69e451"
    "cs"
  end
  language "de" do
    sha256 "de64466229e2ccbc021f4a791de3b92ccc1c276a97b1aef8122238ff6b094105"
    "de"
  end
  language "en-CA" do
    sha256 "3f307feeb189d6dc7369a652647c8e8d7c1b5d4f981fdfdb0cc751cc8cb74ccb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "99e6166d1a4e774b95187723236e14260979964b5085b021fc7a07acb3cc7e95"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f65973d40e1a75592d055306ec2ab31c4981060ad761ad91c722fceab17a656d"
    "en-US"
  end
  language "es" do
    sha256 "d22eaa50df15755e10124a4b189af171b3e0a610cfff208292058524e9b4af7b"
    "es-ES"
  end
  language "fr" do
    sha256 "5512b8bf81b4e9caaf4456c5679a4222598036b4b80e36466e73abba37f1133b"
    "fr"
  end
  language "it" do
    sha256 "7b65bcc0ff4c8d29838b4b671407031a75fdf3b8177984949a863c3d45159897"
    "it"
  end
  language "ja" do
    sha256 "54d33fa6d9400d39c16cd560d16da9c7da2586f76379bf0fe9e5de7a7561f703"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "99b48d2a49dbd9c9064650d7edfa136c2158b66a75c6cb709a0161658db69d7e"
    "ko"
  end
  language "nl" do
    sha256 "9989c096b0cdb4cfe7b0757bbcc2eba237dc35922b3b65fb15e31609c930c0bb"
    "nl"
  end
  language "pt-BR" do
    sha256 "131e745d7f3151ee42d053b7ba9bb57355f1fcb43865bf393f84d1cd20563597"
    "pt-BR"
  end
  language "ru" do
    sha256 "d7fd5d6feaef3919a1f8acfcb2b65ad9d3dfbccaa02b9202fd104fb82b6afc77"
    "ru"
  end
  language "uk" do
    sha256 "a4108f139a80e5a1ddcb5019e77a37a48b8c1a1b2c4910547b65f16f1f954ca4"
    "uk"
  end
  language "zh-TW" do
    sha256 "90c8c6bce9968a35af66af3262134cb2613b78bf031d97959199dd2cbf04c18c"
    "zh-TW"
  end
  language "zh" do
    sha256 "77afd16a97655e7fbb9db56ab173958f0c41574af7b4c8189e3ff861cee89326"
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
