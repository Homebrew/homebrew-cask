cask "thunderbird@beta" do
  version "143.0b3"

  language "cs" do
    sha256 "8d66073fc465b1047329d62ee6ae2f38c4f97e33680bfcdded2e99f2335c5d6d"
    "cs"
  end
  language "de" do
    sha256 "aa140e6e20ed65c1ea8a7adee8bc5b6f7aacd947f35d4b862c8ee3b7ba89d9aa"
    "de"
  end
  language "en-GB" do
    sha256 "4c965793f5f5fbb71041bd9c1ff7434e85a21c7abfcc6e1f8c37b1ec43ebe988"
    "en-GB"
  end
  language "en", default: true do
    sha256 "78d368cf09e29d7bb0fd2f6396851040160af72c12cb97f24c834665daab86f4"
    "en-US"
  end
  language "fr" do
    sha256 "80fdc08f7600fe216935e87d9a0a86280070cff19d543a9f8a82a4e306f7df32"
    "fr"
  end
  language "gl" do
    sha256 "09d0673cae082fe64e5b53c76d267b2fbee86475a4a0f0ec48d862ca7b6cbd63"
    "gl"
  end
  language "it" do
    sha256 "677d5751389b817c2bcddaaf76da62b0f5aa3ba750edb1429d5e68b6de9d5ce9"
    "it"
  end
  language "ja" do
    sha256 "850278e65d4dd1006202ab3873352b020617800a755cf93709ac09c7ed25f689"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c09817febe7c2b3891748be73b525d3aefdfe318aa94ad5baf2225bc67665218"
    "nl"
  end
  language "pl" do
    sha256 "a80cb1d925d5869262b65f9467dad4e9459a8627bb9a166673be9bc39131f270"
    "pl"
  end
  language "pt" do
    sha256 "30f351ad53bbb024a6b9ab3c901a65f2b37fecff9d2cc7727f38795cef7bb921"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "42690a9d3234b3c2256fc63430d9bf8c0ad78f9c918c13712195a26be1af616b"
    "pt-BR"
  end
  language "ru" do
    sha256 "c414c1ea35291e04957deb0aa7ded5fe70b19a8bb055ac77bebc8c45695f2304"
    "ru"
  end
  language "uk" do
    sha256 "4fe9a2194eae908a21999834c190d1bf4fbcb7ff195c6a294ba8f85b3ab1e3c9"
    "uk"
  end
  language "zh-TW" do
    sha256 "a84321dae415dbc7896668b5a7407e6794c016fee31110b88322e3f177c3de5f"
    "zh-TW"
  end
  language "zh" do
    sha256 "9cff4cac2bdee7ca290a52dc9ade78eabd72d653df3a59642f81be4f4cb9ecc2"
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
  depends_on macos: ">= :catalina"

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
