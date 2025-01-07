cask "firefox@developer-edition" do
  version "135.0b1"

  language "ca" do
    sha256 "f82c3efbb7f10d3f7394a9870b9f723c43cf874a4c0e6388488d31fffef68ecd"
    "ca"
  end
  language "cs" do
    sha256 "ab03f67ffd19c438efc333b7f332837a24174c0ae348f4681df5ce54b75338fb"
    "cs"
  end
  language "de" do
    sha256 "6c4c3ccb02b1bb2ec25ff7f6b650a0fe63da0166d5e3f867e201b9d89360c285"
    "de"
  end
  language "en-CA" do
    sha256 "8e0d2eaa1962f8051a941c7d7d004c58b6885f41513439e20892d9a18d2bb040"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e29fae78fc599395e5aaa6e5f02240cc81ed838f7f9e6a74a65c9594a2853efe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "64009155bf63582b363c3e75580447e87f264d303e0d354b6f37d9b86ce7fc01"
    "en-US"
  end
  language "es" do
    sha256 "f8215e8200ab446a0ec2665c4e4e55b2971d7d4a6947c1f20116424ff2e2fb09"
    "es-ES"
  end
  language "fr" do
    sha256 "921de8ab957f7d48ac6dc363c183994429659d0bad0a499b16d20b5bad0a94cc"
    "fr"
  end
  language "it" do
    sha256 "598d8709b0cc198cebda9272210822d50e942f2eaf4a5c6e0e4fbdae3e06ec50"
    "it"
  end
  language "nl" do
    sha256 "77016bf78935a2d0b20eddf45241ded9a5120ced9116df74104ae94a528821d6"
    "nl"
  end
  language "ja" do
    sha256 "619a332dfb264e802407abdbbb70657aebd3f737e7eb05f6b10fd62a9f09fde9"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "2ea8657d22f8ad2c37f1e85b9037e647088f7cff4e78d4d665459988da665faf"
    "pt-BR"
  end
  language "ko" do
    sha256 "c17fbee1c6db82d3cb4b1da77886696bce9d70ddf8d2d3e059e4291a3fcf2f86"
    "ko"
  end
  language "ru" do
    sha256 "6452540a20b086ddc7bf79f66303f86d1e0f661985fc706ca37a6e9f9fafd2aa"
    "ru"
  end
  language "uk" do
    sha256 "7096a711b959cb9030692c035326e7d5112cf24effef4c6d8b12bbfa93c15162"
    "uk"
  end
  language "zh-TW" do
    sha256 "1afc278abd55b3c2b8bca0f716e1455c9b560f74d3a01d041eab45b0fcddd2eb"
    "zh-TW"
  end
  language "zh" do
    sha256 "5ad343e108a4dfa68f7f909577cf65859c57f2db67ba4cba9934c59a7c07d23a"
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
