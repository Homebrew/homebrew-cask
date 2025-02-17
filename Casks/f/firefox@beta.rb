cask "firefox@beta" do
  version "136.0b7"

  language "cs" do
    sha256 "dfbd3c4ef3d73915d1788d8fa36aa8612bbf22c99fa3924914feb5004cac316b"
    "cs"
  end
  language "de" do
    sha256 "4093c4cb06a8ca4a907eb33a9d1fcb5c7fe650f371d18f338cc32b569ab2189d"
    "de"
  end
  language "en-CA" do
    sha256 "28c8629c3f384d2da4d5a1e34ca86199010494969aad2efa0b8723740a07d3c6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ad027bacf0801236f647e4d44c111f9586fcc4c215e550deb8d02e2fda73a519"
    "en-GB"
  end
  language "en", default: true do
    sha256 "579481e264f1cccda8be3e35c475ac15e64eee235975c0df3a362e35eb109dd2"
    "en-US"
  end
  language "es-AR" do
    sha256 "022da7a1476921e390155b5b29250eb7c0def0630c037c7e01000e3f87fa8555"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7204a5817c6b149dcefcab9899f1956a9faa80f5cff250d36f94f3eb39b7b31e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "442bb1ca95460c19c674d51d6acf06528056417bc3142f2c477fd42e78a4d3ce"
    "es-ES"
  end
  language "fi" do
    sha256 "006d84662e2d8af106ae2fe9721b524baa35fd54947b50ee6602508a5a82f73a"
    "fi"
  end
  language "fr" do
    sha256 "45d6689b672113db096a1486eb13e1c2f847b94428aca9a4ab5b0f860a8ef3b7"
    "fr"
  end
  language "gl" do
    sha256 "6fea8b29f5ebd49b65d5276d028a00eb3f2f44d78482e0edffbebafed260e064"
    "gl"
  end
  language "in" do
    sha256 "7114cc9506c96dfb8bdd5cc18b96a087627efe357e54ef98720c1335cb35697c"
    "hi-IN"
  end
  language "it" do
    sha256 "3e7beeaefd554dd2ac4efd1cedfd630f72e7b0f84afad0ccc7cb20c7c1e7c0e7"
    "it"
  end
  language "ja" do
    sha256 "5916a5612b633a454029774d24e4dc35995840695cdd47491f6b28e8593ebc44"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "859036f75cbe00ebdf9c71abc80fccff1bc303ded471b38dfd7b5a96aceb112f"
    "nl"
  end
  language "pl" do
    sha256 "9d44265e696143ec59b156b002ce9a3069926b1efc5f22c29acdfdca5495cb74"
    "pl"
  end
  language "pt-BR" do
    sha256 "91f86c4b01670ff6acc8871ec46ac621533c3b698a2a74139b1858f3fc566b13"
    "pt-BR"
  end
  language "pt" do
    sha256 "0694f5c9df7db07e694ca101277d68a3618f989b738cb48e26791e7b0249c991"
    "pt-PT"
  end
  language "ru" do
    sha256 "30338095aba002b4bb5a80f9dd82826e0b21f4503675e47a6cc34e898944129f"
    "ru"
  end
  language "uk" do
    sha256 "fcb065daced8346296fe2db04289f222c34076adcde3e0f8a8ec558da276a5d1"
    "uk"
  end
  language "zh-TW" do
    sha256 "de1d74fab6f12caabcd8bca050f776810ed098d008e2205ed3dfd7d38fdffb6c"
    "zh-TW"
  end
  language "zh" do
    sha256 "b53929fff605ff7395ec010b5b6cd05dd46ee90277eaf1756ff57a5623331579"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on macos: ">= :catalina"

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
