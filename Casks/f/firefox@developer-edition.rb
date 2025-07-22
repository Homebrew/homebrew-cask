cask "firefox@developer-edition" do
  version "142.0b1"

  language "ca" do
    sha256 "cf00030d0265311cd75c750744682e74e1fda33e549c92a71ae19c440341c77f"
    "ca"
  end
  language "cs" do
    sha256 "94cdef6d5106683c24038a030fe0af725bd72472f99253b0ca03efb058796a94"
    "cs"
  end
  language "de" do
    sha256 "09cc68db60c50c0222a68eef5c694c22026cea7e7757ef1b1de93576f61bdd74"
    "de"
  end
  language "en-CA" do
    sha256 "97a4deff5ad322dae2863cf2c6b0f5487e447e6afc156a9f6330112682b88703"
    "en-CA"
  end
  language "en-GB" do
    sha256 "220621d12db8249f3ee9d9461f18043601c86a2d50aa255a02c1ba198fb59fc6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1769ffe74bec62e6f1be116434335403cc1342f5598380561aeb974b506672ec"
    "en-US"
  end
  language "es" do
    sha256 "f129e6bf3be2874b74795135f31270cfaea8a8deecdac14531aa9dbb7fa9f780"
    "es-ES"
  end
  language "fr" do
    sha256 "2dd66b2b1e1572da46ae6ac3a51c4c207f044097c6dbf4729324bad38d67d5ae"
    "fr"
  end
  language "it" do
    sha256 "444c9df869a190086121cfdf75e52737870f2b6b56f26c61b1813a7929ac549c"
    "it"
  end
  language "ja" do
    sha256 "808f5ea9521ffb317dd1d14a633be9f637159a9eaf6136ffecfd7d9bee0bf317"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "eb802c3abbff0fb6563930d35ba3a46548b0ffd3d99da6317f81f91c9e5b204f"
    "ko"
  end
  language "nl" do
    sha256 "f44407bf88841f4d43120d2e54e7994b0e6dc02aac65a7e03858697eb47292f4"
    "nl"
  end
  language "pt-BR" do
    sha256 "f776d0b3452ac75136650208e9973de687b6d78f7bf15ddec4da363b885d5d04"
    "pt-BR"
  end
  language "ru" do
    sha256 "78d9349d498bb122d5c3624a879e2d2ffc2ce1f94b8d616dee8f5bc74006c5de"
    "ru"
  end
  language "uk" do
    sha256 "441400806ad04df00a20b6f224b86255cbac9282aba343ce4959f90f85eb60f8"
    "uk"
  end
  language "zh-TW" do
    sha256 "da631ea8d04278dd4f0feb739464109d36495e437e471de77de8c99fa0fee897"
    "zh-TW"
  end
  language "zh" do
    sha256 "9fea16190c419a455d97355074e16bcfaf620eea565ec6b0afe96f4e7944dfa1"
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
