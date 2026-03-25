cask "firefox@developer-edition" do
  version "150.0b1"

  language "ca" do
    sha256 "85568fdb1a6d06ab2b25f4f6ce7f7e7fcb27db505fc994fa49b608daaf4a8912"
    "ca"
  end
  language "cs" do
    sha256 "7b9e879b5f667e52e48995bffa1325aa1df804a77c7f310f7452f8af08e218c7"
    "cs"
  end
  language "de" do
    sha256 "fddb81910d1f61fe4e494bddd8559754ead8103f1aabe39aab19eab861d98763"
    "de"
  end
  language "en-CA" do
    sha256 "e86c7b5fa962deb4e002c0b39ff435cca1e5627222c4e77aa038bdbd2602dd31"
    "en-CA"
  end
  language "en-GB" do
    sha256 "16d2ebf6ca7b6bf09e1d5274fa36e10a5311e03da3d9684a72fcc3a7107400fb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "26901df62a5244bf1d7ca51326ef9e76f6cee9dfc8f2bdd5d5f5f793b04ea50c"
    "en-US"
  end
  language "es" do
    sha256 "4ad1f725618687d391aa5e97084d9a378b83d7e91df6f72668361cc69258deef"
    "es-ES"
  end
  language "fr" do
    sha256 "efdabce792be158ad67f63d226cbd4a266596b080710445213d308b2fcf3c68a"
    "fr"
  end
  language "it" do
    sha256 "3281e6780b7bbce2f28768dcf31964316386e2dcbb6efce7e37ff1dc14df540f"
    "it"
  end
  language "ja" do
    sha256 "c351e6c28057a7a5d445d7bf545af24a4d9160204b1395c5b400859638725903"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "785e07606d7c1d120019f962df82df2ecc2b2cb05070cb9926e2e67ff1cf5cb9"
    "ko"
  end
  language "nl" do
    sha256 "5a8ea2cff6c31d57f4e3c6e90f50833d081f6f21da25f7a725d1f8821ca9db4e"
    "nl"
  end
  language "pt-BR" do
    sha256 "405a3d69552308453e24a7820bd3e238f0ea5dba32ec3107a46210647480e137"
    "pt-BR"
  end
  language "ru" do
    sha256 "931e0e5acc1458bc7f86e513d2084808c48b8178a2b4b2e8d9caba3a763223dd"
    "ru"
  end
  language "uk" do
    sha256 "911352f7776b25e2e335acc5eadf9cf8abf5367b2ce8d54bddb657a6ffb26e11"
    "uk"
  end
  language "zh-TW" do
    sha256 "86497b57247e3459716ce955faea9c7e11c406dbb56d22e7375515ede0b12c37"
    "zh-TW"
  end
  language "zh" do
    sha256 "a2abeee828c303177ed7cba4fe733cf77544595f02fd1d80f4a6f769ea0176b8"
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
