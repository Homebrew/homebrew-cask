cask "firefox@developer-edition" do
  version "142.0b4"

  language "ca" do
    sha256 "9b077e72cf0a44b93cc7101f49d1118c2db4cddb24698e25f0563766ca5605df"
    "ca"
  end
  language "cs" do
    sha256 "2f60690819fb0969a80bfddb7d44a3d0f03141c2701f2a31438f44ed606cb41f"
    "cs"
  end
  language "de" do
    sha256 "e998bd28026a5ee16327dd62952c62ea09d5bb1dd5ff0062159e69eb952d974d"
    "de"
  end
  language "en-CA" do
    sha256 "175d130f1c287f43142d7b155a21c4829aa04571bfecbdaeeca8e725448da7e8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "babbedf0afff7d55d4b7a480aad647ad5feb46f4ab71c1441bd248fa30afbd94"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1184247796287362477d62c453e42f18bb8eb908297ced0010a16ad33b519774"
    "en-US"
  end
  language "es" do
    sha256 "b5268666a5d5d052324d7b531a63c8ab3d31279cee472af120f462b41e57fba2"
    "es-ES"
  end
  language "fr" do
    sha256 "d160e2ff74d2bb8d1ff6603e13fb694aa9979f1fd162de935aeb0ea3cf82c69e"
    "fr"
  end
  language "it" do
    sha256 "17aa654bb2e3ee0a2e1492fbb9bf6db3fd64dbc07e4c9be298eed011ff2db634"
    "it"
  end
  language "ja" do
    sha256 "0260dbad4cfb89e91039b994adc037d5e5196b0a8bc85ef90bf4111733038866"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fa106f3bed6985575e3f79085b341eddd75e9a3b540b0c0f6a424dc267d9a59f"
    "ko"
  end
  language "nl" do
    sha256 "f7ac18774928da67c59974d0e9605bff9bf591915223160a164b0544646d3805"
    "nl"
  end
  language "pt-BR" do
    sha256 "3c1da4250e6f5dbb92c2b93c8bed81b7584a4c54494467b55c372f65d2af82e0"
    "pt-BR"
  end
  language "ru" do
    sha256 "1efc0fd66d54159501a066214454343cdf3ce7b6b62bcce6fc8df54d70cd3626"
    "ru"
  end
  language "uk" do
    sha256 "8a493760ff9f29565c53bb3b1c43b41bd069beda8f90687116c4d96d3dbdcdd4"
    "uk"
  end
  language "zh-TW" do
    sha256 "72df184988c2d6f9b60282a064501368eff897d27588986c75814c4495f68fa1"
    "zh-TW"
  end
  language "zh" do
    sha256 "215f985918de9f38a500f12e6f2214ed3e5911ae8c2afb3ddb8a9d9a025fa150"
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
