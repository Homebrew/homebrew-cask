cask "firefox@developer-edition" do
  version "136.0b7"

  language "ca" do
    sha256 "f9f6ef08f37379fc53a1f16efced1d2381683eac480258c42b901721ff6fbad1"
    "ca"
  end
  language "cs" do
    sha256 "ddda11083dd71f439044359a523e9fde44dfdb2016693a60c7e2559bf122ff04"
    "cs"
  end
  language "de" do
    sha256 "835ae23fe9620eb2119b43fd348881f2da0c08a79ae89642d3cb858ed7ec7fd0"
    "de"
  end
  language "en-CA" do
    sha256 "a85c259e252c37c70778b3f1160d7da3573a1c5ec0f00c48f71e502d3992a471"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f9f783b5dd727b79eb306319dc0e81ed98124fe36496877007d5bf719fe5a9e1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "87147098ad78b1c4012a21cd2b6f776607cdb3e524571c0feecea4d3a0815b42"
    "en-US"
  end
  language "es" do
    sha256 "98d9c38316a5326ffb833bba8df8842129be390f09950b8635e6462be5812112"
    "es-ES"
  end
  language "fr" do
    sha256 "9d3eb3a4dbad18eae43f9e7fd4920fc40a869aebfa4bb5ad4d0b4d979b1410fb"
    "fr"
  end
  language "it" do
    sha256 "1d22c4e339167e9cb85c7d7d2b5737a347edbfaf76e9a130b4c4053457c2d954"
    "it"
  end
  language "nl" do
    sha256 "693989fb2ae9c39f686ff76467af134428b59c07ef33a0638b06333d7c0118ca"
    "nl"
  end
  language "ja" do
    sha256 "7a24ca69f00759a6e452c4bafcb3a6a7f955dd8f506acd916bbc0c0033b12721"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "01341ed32667edc1112fd2446d4cfc7271075e110aa24fdb98c107498b950def"
    "pt-BR"
  end
  language "ko" do
    sha256 "8ec8ced700cd73bba9fdca91c4e27d224628b7b23205d8c0e3c51bd096526380"
    "ko"
  end
  language "ru" do
    sha256 "5747a28a07fecdad854d608bed06b359d43917fde09f1ee5b3188d0dda8cb855"
    "ru"
  end
  language "uk" do
    sha256 "910a2d925f55d0b0d70635f78155892c5793098670eac70ee144c3ca15fc3eeb"
    "uk"
  end
  language "zh-TW" do
    sha256 "e9b04daa6f7ac66d13c9b2870eb2d3d9a2ea14726c3430449f8aaa514e204c15"
    "zh-TW"
  end
  language "zh" do
    sha256 "74011acdc3897ad57232eb24ebe9f88900b4b7aa7038db6e2df9778aabfb5f02"
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
