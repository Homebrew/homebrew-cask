cask "firefox@developer-edition" do
  version "150.0b7"

  language "ca" do
    sha256 "626be4582b5df1546ce48d888e81e15080f6f99753fed30690081dc55c6749fa"
    "ca"
  end
  language "cs" do
    sha256 "0e36c9d247f4f5349b03a4644f64aebbe0e92a95d9dc51d14895fa7c277608bf"
    "cs"
  end
  language "de" do
    sha256 "16ee08c7fc8addfd59a40b75efe2f158c87b026b87952c0d7757e98c5540008c"
    "de"
  end
  language "en-CA" do
    sha256 "8bc119b4ee3481bad9324300ba6a3aad9ba0a5dd8e71b0c5ea6dc81b2e25ff66"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f9a603659b650a75c1a272e678248f4aff56856e198ead828a9a335f71a9e3fe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f36cfa890a6902507e32f59de990d76c5d6205b14014536ca5c9a94e06120ea6"
    "en-US"
  end
  language "es" do
    sha256 "473e6a8144cee8cd57c03981d327306e68ef13be712fe2465b25e0ff6392b04f"
    "es-ES"
  end
  language "fr" do
    sha256 "bd474c7d4b527be8a2cd6f55607cf451edc7d67ff344b86b97391eb29a3926dd"
    "fr"
  end
  language "it" do
    sha256 "ceff0617744618429c86964f3f504e0e8af400b2ce7e02faa83aa01ebcb2ff23"
    "it"
  end
  language "ja" do
    sha256 "45f27f0e19222a36f27914dd73d15e4a415349499bef08efbf9cf91e6b7f1980"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7e0d936beacc5c777a81faba3dcf779388151c05d1704420092d605203aeefca"
    "ko"
  end
  language "nl" do
    sha256 "c05795e7c9663cf759ccf48f425f44dc2ac4464d5b4f2f3c080f17eb422fae78"
    "nl"
  end
  language "pt-BR" do
    sha256 "da939a15ce9c792bc01cd173d76013fc86f060fd8a43e26099f365f2f5670aaa"
    "pt-BR"
  end
  language "ru" do
    sha256 "758520d4da80856b0c35fc5492d289e9dbb31a74b86198988dfa29d153bd03dd"
    "ru"
  end
  language "uk" do
    sha256 "aebf7964d01a2b057c57fb87d8206419fefcdd367bf6c664087b0d7773f962e9"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa3f8c8339cfd7404454c90d085e04d5882c27d772c65adac4deba3d49bbf76e"
    "zh-TW"
  end
  language "zh" do
    sha256 "7d23c4d685c7d2beb784278de1bde4eedd1a62a17533266c22da5daebc2b34c0"
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
