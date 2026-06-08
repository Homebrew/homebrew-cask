cask "firefox@developer-edition" do
  version "152.0b9"

  language "ca" do
    sha256 "844be43c02b8b37c3902a1e269e3c0846a10798be8c3d1ed537f9d8efc1cc2c7"
    "ca"
  end
  language "cs" do
    sha256 "4d053dcffbd8782cc24d40a1e9ab2d9e9f921108230c4f80cbf337bd8e0dab0b"
    "cs"
  end
  language "de" do
    sha256 "1d19d05e30c55f0f0adf98354c40add86e0009cc5124d91811384a95e54fd9fe"
    "de"
  end
  language "en-CA" do
    sha256 "199f06abd4063ce9cca14c10786b7ead4592bc1f0d3dceca6c5759647428b37c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "77289360761e8ec095f2c51d5235225d19086e91d25108f960481326c5651030"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9abc9485d1b9c283e54a0608a163030a1ee2dcb2a639e24baef164004a34e62f"
    "en-US"
  end
  language "es" do
    sha256 "8a4f01513054f11c19a8358e7e34b472c783dc48b08896ef3a449c782be6cab9"
    "es-ES"
  end
  language "fr" do
    sha256 "abafa0e66b28738d1efe0b441c51e9665276d9b244ea0d5d3dcfcb9cc04fc9e7"
    "fr"
  end
  language "it" do
    sha256 "d567ba6b5365c8b5263c58ef1f2fff8cdbf9057698ff3363218bd0f88dec0bb0"
    "it"
  end
  language "ja" do
    sha256 "0f5f6e9e8e3ea3f2177aa5cb03c20ca64a5871d8e378b110fd472268f8a5dfe2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dcb37ecd7903d3fd739228b1de093a2b1f9974d4d0e8c45578544aced351c291"
    "ko"
  end
  language "nl" do
    sha256 "53b8805db5263bad02c5ebf40e8c1e974bb6172df109ea52f8dd215b26d7381e"
    "nl"
  end
  language "pt-BR" do
    sha256 "fa461b970ad2a9b5ba76661b57ff176d6d2aaeb10e9993e730e142e032308131"
    "pt-BR"
  end
  language "ru" do
    sha256 "309d242ef8b818eb7a9b3980a677044782ff34397d7537cfc19595e4df3d2127"
    "ru"
  end
  language "uk" do
    sha256 "29e22dc808eb73de1acd64dfacb8730b52625ed58d8720a35dc1983520f04885"
    "uk"
  end
  language "zh-TW" do
    sha256 "fecff15419d98954d83617e11c7a668867a99a731bdaad5a386e6d16eddfa744"
    "zh-TW"
  end
  language "zh" do
    sha256 "4a6e5876be1212d266fb754165112f9de2a3ed43541b58baabb497567ae2df1e"
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
