cask "firefox@developer-edition" do
  version "160.0b2"

  language "ca" do
    sha256 "bc4d05c54d573da8b36f5f1843b6f0d1b852b35db1f9889da73026d6f5d38183"
    "ca"
  end
  language "cs" do
    sha256 "5b19c194dcdc43970a69deaa9bab1f8b8d9ebefe75a6f6ae8b6e6716282ceedc"
    "cs"
  end
  language "de" do
    sha256 "cf491515d98daab1ff0c6d96746f1f3632f4b5d5e563384dc0fda09e0a17f0d0"
    "de"
  end
  language "en-CA" do
    sha256 "219c02aadfcd39be35ff165f4b687bfaeaa59bbf59da0f9ad3554e40f869dbdb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "124c99d1d4ff3bbe50635452f6c085a1ddc7bb4fc3bb0340004498956b3def0e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1b3582b4a05844823692e2a2c7510942b346dc3fe5bdc83ea3550526efe50698"
    "en-US"
  end
  language "es" do
    sha256 "2e9a08a169d1f986a7496733cb7de900bbf3bc0f5cd452d455d5b76344310508"
    "es-ES"
  end
  language "fr" do
    sha256 "989fc76bf88356eb1f3a3d23198f7698c9eee2eff3a183d31fbedd2ba189c75c"
    "fr"
  end
  language "it" do
    sha256 "1530d9f77b7fc833857b22c4dfe568ba12d15b2d72366888e24ce21511d8ae61"
    "it"
  end
  language "ja" do
    sha256 "e567cdfa004349eab5b68a4d48ae1ef06e306ba95b201d31364801f4b1dc9bd2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e03e79914bb5fd4748808935505aa73ececf3d902bf524f162aab86d483568d6"
    "ko"
  end
  language "nl" do
    sha256 "5f3ac69ce113ef45aaeddb43d9a6dee6c2d6c33844f5600b0e26e54444d2a265"
    "nl"
  end
  language "pt-BR" do
    sha256 "ee1225f40172b54083074399418695abd561d9fcc65638ca08d5f4f63637fcf5"
    "pt-BR"
  end
  language "ru" do
    sha256 "88472f9b697d36d1c6ff5d14b9987393f1d597d4824fc2a0c0571a935e954bdb"
    "ru"
  end
  language "uk" do
    sha256 "5956977abbafb1ddadda1e39def803c8fe2ba7cf19523de332091f130df61d1e"
    "uk"
  end
  language "zh-TW" do
    sha256 "5c53f9a440a6556ea17563a5b25294102224e10d49d2eddf12a1c3d9681177fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "042285ef0370524cf0d35fbef82bfd1a3e5ee93f4db1cc5445e7b35a6f2fe8f3"
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
