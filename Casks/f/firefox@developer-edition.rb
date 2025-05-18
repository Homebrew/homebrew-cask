cask "firefox@developer-edition" do
  version "139.0b10"

  language "ca" do
    sha256 "29c83921b412916ac90329212266e62973226364ac93e58bd7836200dcd0dd7e"
    "ca"
  end
  language "cs" do
    sha256 "0cc35ecaf828ddc76081d0bdd08884d7cb8bca58afb75117b9d1eebc31a54a28"
    "cs"
  end
  language "de" do
    sha256 "873cb6833e04644df43d6dd69fbd9b87578bd2353bd15af5f91d9fec2ee49bda"
    "de"
  end
  language "en-CA" do
    sha256 "6affa6a81f991c97ebe197905431669c176e8425cb8de511e65d1037e795d76f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1397e6ba081c7cbb0305c51c879629af8429a74d018674bf9ea8e7f9ec2219a6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "08383ba87902a3c5a577a5792b1547d4fe6316a793bd57b8b5931bb8ce05ef08"
    "en-US"
  end
  language "es" do
    sha256 "0fe663b33eee5b6ff4640864ea8cc44157c0ebe256a911120c9d732c0e16ab48"
    "es-ES"
  end
  language "fr" do
    sha256 "a08f9ae0971c6273a1b20527049e69a42a58d311174d7c01015e6eed7e528564"
    "fr"
  end
  language "it" do
    sha256 "0f490786efc5b613e72d601f68eaed225450809b8bda3116834bfb4bfe69e687"
    "it"
  end
  language "ja" do
    sha256 "06fe7e214d23165ed7e40cf57c363378e5902aa9f28e4fe85bf8fe20375e6260"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e6b021da17e18a0bcd733bd785815f44a3105b80c51e29c0b27695e6774086dc"
    "ko"
  end
  language "nl" do
    sha256 "f22bac56bd7b0e137d18e67496a019363cf1a0e99f74af0604314235616e7970"
    "nl"
  end
  language "pt-BR" do
    sha256 "a77dafbd7ecc992645efde62a47296ef3787579caa98ff41f2f18a10e8e92716"
    "pt-BR"
  end
  language "ru" do
    sha256 "12af10fdae94db16250b3d6a9cbd780f74d4a5aa0c50974dce5200d743e6b8e6"
    "ru"
  end
  language "uk" do
    sha256 "35e592fa73fa2b1a0f9aec2472c12f60fbd261e4278c315315e20de18673299c"
    "uk"
  end
  language "zh-TW" do
    sha256 "13ab4e63fab5f537941f8f1d011853879692b94fddee41732a96a80dd02712dc"
    "zh-TW"
  end
  language "zh" do
    sha256 "a459e0d0f8f77dfed3a377f335f6c05a8bab3e0b9b8f506d12a5ee4ed9924bd6"
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
