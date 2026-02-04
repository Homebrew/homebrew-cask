cask "firefox@developer-edition" do
  version "148.0b11"

  language "ca" do
    sha256 "5931a7991d9ced85aad39d26b0f3f1dab22bb9c81d5bc57ec8fc02906df287e5"
    "ca"
  end
  language "cs" do
    sha256 "1184440c80316a42b1c81b1b1ec42e640a7a88250d8588c021ccff27cbaabb2b"
    "cs"
  end
  language "de" do
    sha256 "ac09c0b4e50ce197504bb55804719b01f82a6b83114a95fa6e3bb5f0c39efee4"
    "de"
  end
  language "en-CA" do
    sha256 "43d9cd0dd4daff05991da25a0a885b78f5e7c2d8b95f10d43f312508483dbbf2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7dba2d9f74c51733982347eacb840efd599f81157634d1ef504514a83608ac4b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ed061578e4f4fad3c6453e267c9539ae5644b0a98df77a7147a05133ce4e6218"
    "en-US"
  end
  language "es" do
    sha256 "63eb8f0a2f1c8ccc1788911781d119888e11338c50f9983ce757c3a23ffa12ff"
    "es-ES"
  end
  language "fr" do
    sha256 "a4cf4f58af5e8cdc3e337e3e5c51be600b69559a39ce854ef8998eb9f8bef967"
    "fr"
  end
  language "it" do
    sha256 "ea66f26434b7a4c897207d4f63beb98469655084b3121e88e06241c7977c615f"
    "it"
  end
  language "ja" do
    sha256 "cc3e8b5780568f8a1ba0d31696033900b193b79fef1c9d01f95d41c7295efb2e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bcc4e8189eadd76370debfed9253d4b6add533e8988afa94d2472b62ce26c1d7"
    "ko"
  end
  language "nl" do
    sha256 "8f3eae45e91378a350d79f1b8694aca2e18fd0514c7bdf4d16a15e50d04d4f9d"
    "nl"
  end
  language "pt-BR" do
    sha256 "cf8b39a24f845fd9ffb95bd3e9ab1e54c0b41130a6d9372a74a0386682b1d7dd"
    "pt-BR"
  end
  language "ru" do
    sha256 "ad0b29f8c34429edcca1bcaa3a65acb95d14e17080822f7df952936cfd576ffe"
    "ru"
  end
  language "uk" do
    sha256 "5de05ac6762d023f720abf946e193646742db5ead7c55f3a2ce176582219d9f4"
    "uk"
  end
  language "zh-TW" do
    sha256 "42429ef24ae5f37c5bdf505c03cb943fc6bdc02b097bda051f340b23ca7a9d81"
    "zh-TW"
  end
  language "zh" do
    sha256 "6a51986d079cef98d8bf56df323a280df97304f173ec0af42c8323522742bd52"
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
