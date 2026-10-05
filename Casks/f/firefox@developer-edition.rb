cask "firefox@developer-edition" do
  version "158.0b4"

  language "ca" do
    sha256 "09c7cf9e9f571b4c7fa413b8ea70a2358232cf4793cbc3149157654199328ee7"
    "ca"
  end
  language "cs" do
    sha256 "99f303c9e194ea625db7a9a763cfbf490cab6e765158a7f69ba47600449aa7b9"
    "cs"
  end
  language "de" do
    sha256 "a5fe1b682445e1dd3a89b0b363474f322c70ca8fbba5c0623ec0dfd17e0ef160"
    "de"
  end
  language "en-CA" do
    sha256 "8a04fd3a704388b5b8f5b31cd0355770b7d4dfdad6f3fc7d0ee7c6a20f9e8e7c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "88574e69b149444d7c64a1aabda383cceef161e83e6e64a34f15de683007d17f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1ec8148ee4907f76453def0ca89e362d87a5b371c3cce3d08d213f537e851ac1"
    "en-US"
  end
  language "es" do
    sha256 "bac87e34403ce2c768779abb8ae67b042aac2cc025ee4653ad08bb8fb1056bcc"
    "es-ES"
  end
  language "fr" do
    sha256 "c7766de2d326daebdaf653feb6c83ddb46212571ba5df509896f6fbceb1132ba"
    "fr"
  end
  language "it" do
    sha256 "c71c551cc26a0b673a5e5759b53aa314975251d46dfac7cf52c18117fa4ae583"
    "it"
  end
  language "ja" do
    sha256 "0f897b82e250f2b6406f95aefb0967e68464bc7f5a4a40b9d111e3562be8a7b0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f3829ba47823ea2cc89e2943b8201db92480f6597a652709422e9070b79989cd"
    "ko"
  end
  language "nl" do
    sha256 "97872024e6f7dfca50187b8be0758e0c4e52e154390e638a3ebeac0ea11d8407"
    "nl"
  end
  language "pt-BR" do
    sha256 "812eaecee4f65de93eb9e73848bf6f7e5ffbc4d29e60916d2bdc03a381b07903"
    "pt-BR"
  end
  language "ru" do
    sha256 "a5a3542e2cbf60e8dec1998d83120de3b00eafffc90c70102ef93b2c73c011cb"
    "ru"
  end
  language "uk" do
    sha256 "b05a91e7e8f2d8dd3656a1a9bcad8605d363ec3f3a4084da9331181693cd7106"
    "uk"
  end
  language "zh-TW" do
    sha256 "4a98cb30057279b75772005be3d2b2fbc425ec828a90520acc8b0a22d12c2c0c"
    "zh-TW"
  end
  language "zh" do
    sha256 "92e7e62c1fb444c4c0c488aca1e4502e366991c314ed7390bdc301afc885d362"
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
