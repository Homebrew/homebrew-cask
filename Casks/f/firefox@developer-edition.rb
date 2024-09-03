cask "firefox@developer-edition" do
  version "131.0b1"

  language "ca" do
    sha256 "f623210543093da4b7864349b96d1da67ef71fb0f8d80f9c5555b3ff16e474e2"
    "ca"
  end
  language "cs" do
    sha256 "e1b92554f1eb9718530d816e2417490024867e2e00579ad60b34bdcf49fc6f4f"
    "cs"
  end
  language "de" do
    sha256 "1eef096b35e3ce0aa0fee80d1cda8eb37ba927d2805dbecbac2a1c626b092868"
    "de"
  end
  language "en-CA" do
    sha256 "2689cee8f3ed66e7811f88ccc8b5e5aa62a186b5326616c322c91680da57445e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6df1bd0281683164bb04bbb59a0524f65e0d245852bdd321a8202c3dafc47914"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ae6919642e5661463df68ae0f8d55ede27a1d6a07f737c56ebf6f0687fe642cc"
    "en-US"
  end
  language "es" do
    sha256 "fa2c5dd19aadb8dcbb2c416f72b4e508f0200f18cf3503fc34c18cfe3bb65173"
    "es-ES"
  end
  language "fr" do
    sha256 "db8cec56e348f72978cc955502d25698ca15fa552ef43f4aca9689170beba7f4"
    "fr"
  end
  language "it" do
    sha256 "01b6f4de81d96d43703f87ae2dc5121034f387eb24f96cdf4568725eca49b86e"
    "it"
  end
  language "nl" do
    sha256 "132304311916c57b3b52224eaac5d162ddcfbb9874ee1f28daa31d6f42f7708e"
    "nl"
  end
  language "ja" do
    sha256 "f1c3553949e439cb0f0e01af3424ca7e0a02005035ee985f80ce8ae2a9876627"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "f39354e205d7c9019e7c52bc60760a113126622cbf880d5eb9abed3ce025e190"
    "pt-BR"
  end
  language "ko" do
    sha256 "7fd9a38848bcafd7e57a460d2e651c599df3355f00069e34bfc52ce76749a27b"
    "ko"
  end
  language "ru" do
    sha256 "7db4f88c2f65d7f9112d67b1d512f49b19268a8dbc2aa81bb989f3d9af636537"
    "ru"
  end
  language "uk" do
    sha256 "0c38d6772bc4244f073ac466622b266239e49ec9d29d7c344e4955ae7b6934a4"
    "uk"
  end
  language "zh-TW" do
    sha256 "8386af9d9fc15b51652b1789f5fe0912bb8d4e0691930dd1479bc20c9e78565d"
    "zh-TW"
  end
  language "zh" do
    sha256 "50ec551cbd79fc17075f8a03b9ee75d95c90ed16e150008a4cb3ca947e5cb237"
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
