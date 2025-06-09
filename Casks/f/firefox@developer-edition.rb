cask "firefox@developer-edition" do
  version "140.0b7"

  language "ca" do
    sha256 "38cdf7e5b9aad26a4fb461116ec492845ca2d4dee087ca90d5f5126f25c65039"
    "ca"
  end
  language "cs" do
    sha256 "0d8baf2fe8b8814ce2ab287b33ba445fc786279935c656681094d700e7e7b281"
    "cs"
  end
  language "de" do
    sha256 "9b931e50a89af76d85733b320469b40ab1ea37cc2c7a9c0ee773bf9128614511"
    "de"
  end
  language "en-CA" do
    sha256 "89955155e2c3d7e81d960193c91b119a6563467fcd5b794731a18a1b20b92a72"
    "en-CA"
  end
  language "en-GB" do
    sha256 "408c3fbfcab6c58b2d9b0e68160c64ed3d940868ca8aacf8767bc89d16552f2d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c760c060dd0577f51b0c013ac05c5c1e6b79efad06f8ec3ebea54386d13063ea"
    "en-US"
  end
  language "es" do
    sha256 "ffd8947b7c3a283666ddd4f8ce4065c29966bfa97eb30cb701b7fe35cdc588e9"
    "es-ES"
  end
  language "fr" do
    sha256 "b1b68ed60fa14c2d34bec84dac6c16d374910464f81b8aef0f9f7e26e0e0a207"
    "fr"
  end
  language "it" do
    sha256 "823966efcabb0afd397f14c1ad642b997c031fc73cecd4f1e56c95178d133b3a"
    "it"
  end
  language "ja" do
    sha256 "1fcf951e9e3e7b2f26c586c61cb0aaf556dc476d377acf5c44c2428cca1b7d7f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0c84893b6ec5f8823d8c6f7dfbd1a5ee1416171cc6025db92f7898f7b4471eae"
    "ko"
  end
  language "nl" do
    sha256 "5837f915db48a9cb14c2efbee2bf02ff0235f805623cfe78a623d0188c546350"
    "nl"
  end
  language "pt-BR" do
    sha256 "e9105d8ab7ea1d58714d304172651f14669a7e33e0bad51ff0fe6d82ffa3bcf1"
    "pt-BR"
  end
  language "ru" do
    sha256 "6c5d90c26dc0b3ae526cb86e8e34d630b8cb09f4b410fe1a272592b4f7cdce52"
    "ru"
  end
  language "uk" do
    sha256 "5561c0601ad0dd40608798edba3a1df3d6e1c24d411dd72c05b406a51db8597a"
    "uk"
  end
  language "zh-TW" do
    sha256 "9ffd5df46d931483bf66703598c5299e3597900c2eed2af9fa2c175f1de7563e"
    "zh-TW"
  end
  language "zh" do
    sha256 "cd1b7296fdd5e33781347273b39254ae2ef7317b989d9e283578e9c5ee09773b"
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
