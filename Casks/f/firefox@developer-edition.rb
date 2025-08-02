cask "firefox@developer-edition" do
  version "142.0b6"

  language "ca" do
    sha256 "5bbd78573951b40505022e19f156e0c4af1338ede7af9d231458fdfe2ff2e782"
    "ca"
  end
  language "cs" do
    sha256 "c78a2aa2cf3e4ca6d9947c4f1b3c60edda70fad625afed7e52421e4ab81b2e79"
    "cs"
  end
  language "de" do
    sha256 "4f2a2f4a7e92453fd7bce242932a46278e4badac5d697a89beddd8a14357914d"
    "de"
  end
  language "en-CA" do
    sha256 "9faa2b812f861f11ae49bbea9d039b71f8c5272152b0f1b65a0d23abfa636cac"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bc15d3e6f636984ad42e476311171b18c42ff713900f85d45ad5e49ce0ba9880"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bc30aeb54c14b5895de5fb1d7c69b338ceffb434e386120531c5cfdcb4d7d3d4"
    "en-US"
  end
  language "es" do
    sha256 "3fbfd621105c86c5e84e2fb85fe7ba0628402c771d1f9fb3033eceef35e3c0df"
    "es-ES"
  end
  language "fr" do
    sha256 "9a1e160efe32a55b0b939464b2256a7a5498ad51d6b2327373a6950b721bde7b"
    "fr"
  end
  language "it" do
    sha256 "7ef358f9cfe3f862b4526af79cb376a3cd8f62e54f0f6d0c0b7953edb2d1872c"
    "it"
  end
  language "ja" do
    sha256 "2de9d978dcbc0f527ca92f2f6a38cdb8075b8478acccbabf479371783de94858"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "48bf289204e515cc9e7300af362493e53ba299cdd6fc9f8ab7fb556e74cdd766"
    "ko"
  end
  language "nl" do
    sha256 "afe25bcb95296af393bcacfe8801988593a37846611dce55622e639f2012a253"
    "nl"
  end
  language "pt-BR" do
    sha256 "fb64e9c5961de7e905818aa59aa18512cc2fb3b0c11cdda0b4c428b26c28f7bd"
    "pt-BR"
  end
  language "ru" do
    sha256 "d38e85f791ae973602c8517e45cdeb57886a1eabad3046146e1e365b53bf4997"
    "ru"
  end
  language "uk" do
    sha256 "08bcb9723272c340633611fea51e0614b53debdfe774aa511424b2fc0b7fee06"
    "uk"
  end
  language "zh-TW" do
    sha256 "f152076821e275a27040ff7c0abad465051c9bcf3f92d058de0c72089a60eef6"
    "zh-TW"
  end
  language "zh" do
    sha256 "267c79351c319ad1aecf76bd1ccbb030969d69414353a563d26d64bd805a8ea7"
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
