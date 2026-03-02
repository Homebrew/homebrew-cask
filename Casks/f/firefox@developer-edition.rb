cask "firefox@developer-edition" do
  version "149.0b3"

  language "ca" do
    sha256 "41ead752af079a6a15a508adb85239619599c7b026efe14de2100561f1741eee"
    "ca"
  end
  language "cs" do
    sha256 "75786ec263a4157d74c098a669ae5a1283b0920dd30b3a56a4294d84bd9229cf"
    "cs"
  end
  language "de" do
    sha256 "18c756272643aad0f48e747797a072ffe902d86c711aabf4fdb0c1c7be71696e"
    "de"
  end
  language "en-CA" do
    sha256 "bbeb1f81038ec12b1abfda2146edd9610952c93d98e8657070035a700c5c40ce"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e40c9a49f741166d479b4e1431e592bc82cf3b35804b8d753d5f6c5f90c3806c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "32a6a23ca4f6ac3e04fcb89e326ae351c1a0cb410e36df6a62a8165c28661a68"
    "en-US"
  end
  language "es" do
    sha256 "7db7a24df560f72837840a64b3541c318c0396bb16e1c3f00bab841d3c24f47c"
    "es-ES"
  end
  language "fr" do
    sha256 "c15712d2464e94134f6c65649a224641c5f1c2d5b5d9f163be7fdef05c7af988"
    "fr"
  end
  language "it" do
    sha256 "e595b94189dff8efabd2b4b8db7b2d01cbada9bd75adce49215cbc3833dbdd90"
    "it"
  end
  language "ja" do
    sha256 "a689427b3051085afd1412a8ac3a1183a3ca6eafdf106d4838d7050c04332aec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ab61a2fa49de6b73b3fb0d6ff4aead40c9751c2a27d84938c4bcc917aa24cdcd"
    "ko"
  end
  language "nl" do
    sha256 "ae7e5fd602250901352da12517c0f0fc0478638c4f95562eb60715914edcd4bf"
    "nl"
  end
  language "pt-BR" do
    sha256 "e11b3bf90b47184f468397621707bd600210c4c0fbe797e7234eeea47b24fb97"
    "pt-BR"
  end
  language "ru" do
    sha256 "e4ce01f17eacef6e3b4f88b286d6a3e6370e9670b2134e02d9c9ea19a04736fd"
    "ru"
  end
  language "uk" do
    sha256 "fcd116df68dad1aca348e90a03f7abe115ab28c176084b5470533d651d070b08"
    "uk"
  end
  language "zh-TW" do
    sha256 "bcd2a8ae595f90129ecf0812d00cf54f3ff6e92302a9a58144cdec12f1a761d6"
    "zh-TW"
  end
  language "zh" do
    sha256 "11dfd0d74bf8c5608327f8acf03a28d9a106822a2f94cad80296734c63cf4e4d"
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
