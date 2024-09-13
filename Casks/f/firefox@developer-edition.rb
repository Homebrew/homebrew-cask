cask "firefox@developer-edition" do
  version "131.0b6"

  language "ca" do
    sha256 "4d2f0e1e0e8ccfbcc86eb0008a57aa3bd7cc27f578e102416d30b28acd8ed5ec"
    "ca"
  end
  language "cs" do
    sha256 "19a316f2b9f593e3039f3a924d7254b22abe5402253ebdf10ddf9e326a6ca3bd"
    "cs"
  end
  language "de" do
    sha256 "4f4d3068251eeef5af7c8932a3c63f942af7ff433b54ceee878a91adfb577fa2"
    "de"
  end
  language "en-CA" do
    sha256 "dc44d535391262df49aeac798ee6f70fe39bdbdf5ec5ac077409326a4217531b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "14e3921910688949699ecdb01b9bc978057cb6e42e0b1c0555ac92ea0c932353"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3927069ade1f492d5c6e025a0a1ccf633122b779b0e007ef0573ad2f7743f3e4"
    "en-US"
  end
  language "es" do
    sha256 "447a69a42f2929d9ebee0d08f449a9e57fa3cfbbdaefbdf35e7f7e55b96e2764"
    "es-ES"
  end
  language "fr" do
    sha256 "cd0f16472412a6f83597f7cc59ad3c376bb0a9539de51e87ac9f358bc852464b"
    "fr"
  end
  language "it" do
    sha256 "0de7418bcb006779da2a4c782fb705faefaca4439ce72449f0c2be73bddd2ed6"
    "it"
  end
  language "nl" do
    sha256 "332035e82ff6d59b93035b75c7d10db3f0f176116540779692c13994d9ad8365"
    "nl"
  end
  language "ja" do
    sha256 "3f96c3ed2c642e3b67f1bfe3e5f363641688bcafc6b28bd08aa58b4944c32850"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "06664c1de85d2c7e57c9282a82ce5168fd0d509563109d2a71ffc9332d9adc9a"
    "pt-BR"
  end
  language "ko" do
    sha256 "c300ca70c24af0f30f349e01e78697b2ee3042055d30e061c2c5f4f71d4973b9"
    "ko"
  end
  language "ru" do
    sha256 "ca9eab2f1b3650fe62465b947ecfe51e4b31218ec8db10b0f0d08bede6627312"
    "ru"
  end
  language "uk" do
    sha256 "b4c3a961497b9cc3c1d8602642a2aa7c9adba5f3a5addc992f27ffa0bb5a49f4"
    "uk"
  end
  language "zh-TW" do
    sha256 "536614230f871a2c0195f04487e80bc9985df1f5716f803ad044f06f8b538c67"
    "zh-TW"
  end
  language "zh" do
    sha256 "22515a06d3832cca6831c15c512bb8c738fdd150c7b035d69041b0d1e07716ee"
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
