cask "thunderbird@beta" do
  version "153.0b1"

  language "cs" do
    sha256 "cee1ccbdf349bd47e0aa54cde4ed976c4b66f130f6ec070d184a9ad42fc423e3"
    "cs"
  end
  language "de" do
    sha256 "51751fb4ab36215c2c406650b4e417adaadabed072df2d5163f5dbcde9d948c4"
    "de"
  end
  language "en-GB" do
    sha256 "76a248301e3f70068f7ac5f82b15e0349bab48748bf5258dfe9faddcb756f043"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bfc051d2ca16df2af5bce0aac6aede7f0e7d955ede8394ef1a828edf30de7834"
    "en-US"
  end
  language "fr" do
    sha256 "c05d4d4a6053ea87d0d50eff5a959dc1edc198f1be2cfd01655cdea3fcf140a3"
    "fr"
  end
  language "gl" do
    sha256 "41488ea16b5a718fcd4463490a80798473de3ce9e8edbc6618e4a4fa3913f1ef"
    "gl"
  end
  language "it" do
    sha256 "d62c79816214fa97ccd7614f823bbfa95af39ed29eb93e348e78a015cef87e65"
    "it"
  end
  language "ja" do
    sha256 "5561584ab805c19e64ac30c762e7202eeb49aa24f4940dac71303dbdb9da8f88"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "df530b342a466cfd709fcac9665dd7bae3fb4d09a5350cf1ccd653a05b9aa867"
    "nl"
  end
  language "pl" do
    sha256 "b32fd3a5a700f5cbbdc40be2cde4dc99e1b9511868ad6f5772ce2373032b4313"
    "pl"
  end
  language "pt" do
    sha256 "73d2fd3925e156f2ac06bd28bcec7b0cfd269ad787f7b66c53291c79c980c82b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "70175175627462a465688a5370002cdc21ad705aa443df1d7e06b79d350e11ff"
    "pt-BR"
  end
  language "ru" do
    sha256 "64f3e8597cf83dcb12e3e8782ffd6f2e2cedc4f959dd277c50d7083734f26888"
    "ru"
  end
  language "uk" do
    sha256 "b9ed12eeb0e732e2fada9c9095e6d5d8156bdb2e7ea1f7a021afacb216470a3a"
    "uk"
  end
  language "zh-TW" do
    sha256 "211049304c781dca58d0f9f04e0b4b79108757ead69a956a7ef437eef2d10689"
    "zh-TW"
  end
  language "zh" do
    sha256 "9f2368d67e556ee51b067062292a88b7fe2d43f484c008288b5743d02949f7cd"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Beta.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
