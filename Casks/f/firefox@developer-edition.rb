cask "firefox@developer-edition" do
  version "160.0b3"

  language "ca" do
    sha256 "07c51096a4ca69ea2419a3a223099a5355b8cb93b94c1a5290bd63efbb3d6c6c"
    "ca"
  end
  language "cs" do
    sha256 "5754de0fed216f035f33e419b4dac0e97466ac7453313d08bd83aafb631a37fb"
    "cs"
  end
  language "de" do
    sha256 "4880355b5e8177a2d310f810f655f98aa065616cc6f935e825021d9362147f6e"
    "de"
  end
  language "en-CA" do
    sha256 "710f46d5192e4ffd37b32e5c83f30695f8396b630bc39676dc8f4be13ef21ec8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e19af197c65bda257c82abd21404202134112609cba921d016ff8b862090d8f2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1ac016815efa1458eebb89a6046cc8aaaabd78928667c3474297eaed0c602387"
    "en-US"
  end
  language "es" do
    sha256 "03f1c06cad988cd2c8310488539943644a9b5ad23c70be7e68cc7f4ae71a75b0"
    "es-ES"
  end
  language "fr" do
    sha256 "ac7222acdb9d2bfda4653e1868a95f89b9c9ae4cfed129e30485a2cf11e7cdb7"
    "fr"
  end
  language "it" do
    sha256 "364834ee59a808a5fb27d116448350ece6b5c0c28bf5f8927e96fcc829487724"
    "it"
  end
  language "ja" do
    sha256 "d73b89b58ad9c7ee2d5526c835f65f52652d01b7b19e00917df5c81423af232e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "127a69f7f00a4c2c20321c71f911cc3ffcd7ad91b29f8e1d395d7bf0b1c0ca41"
    "ko"
  end
  language "nl" do
    sha256 "6f6fae2386eb85abb3dd4c3fb268b30d8b4884e3ea24147936711c1477ecdd3e"
    "nl"
  end
  language "pt-BR" do
    sha256 "542fc07b4ec0d4f18e3dd50289e0aede9311ec2418c85d1f79dfc82badf4fe4b"
    "pt-BR"
  end
  language "ru" do
    sha256 "4e4b5ff484ba6e6e6700c4f6c75889011b980a45ef427fcd36c6ac2801260558"
    "ru"
  end
  language "uk" do
    sha256 "8d4763298adf0df2ac8ee7a75bd1d7deae6bf8a7d55919030b4fe4a55e0eb57b"
    "uk"
  end
  language "zh-TW" do
    sha256 "94c7006d55f350a62e5b563e150a0e3e657e71113e8f967c8723974d449a0db5"
    "zh-TW"
  end
  language "zh" do
    sha256 "c4b08da6c5547254c1ee0544da8363e82cab9efc79714f55576421fb9d5fda22"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
