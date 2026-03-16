cask "firefox@developer-edition" do
  version "149.0b9"

  language "ca" do
    sha256 "9f2758d82b624c58b4d090f03febd73056a8dca877d2674b0bed0b393d0311f4"
    "ca"
  end
  language "cs" do
    sha256 "09f3791979af0003719c8b1e0896fd94503b056213b21d64cae338d434895fdc"
    "cs"
  end
  language "de" do
    sha256 "d54f7ec2c4ffb5b7cdf720fee1cb90372b513026ff6f6e127c8db481f120e5e7"
    "de"
  end
  language "en-CA" do
    sha256 "af57a916e4ce22e0b009e1ff3fa59b8beab5b6a5d0944c368cd4677d662aabbe"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d3e30124a27d05d2fd01024eb31583e448530e4d58f9a85804a30000d896ae81"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ba2055210df6a540ef63028d085ad9c77aa844813351b372c7b18ad9604cfeec"
    "en-US"
  end
  language "es" do
    sha256 "0496bb8d763d627b4108ec8b00ed499bf3e40e896ec9561ce29db81de8b5558b"
    "es-ES"
  end
  language "fr" do
    sha256 "31d886e60323243980197f4646405185cebf228c896b15e2ca78d8eeb9c5ac62"
    "fr"
  end
  language "it" do
    sha256 "319badc6a18b91892e6672ac5b639156567bc37ecba37257ae198abc11f54daf"
    "it"
  end
  language "ja" do
    sha256 "fc96d478924425e4b2839cee9951b93382102ee3ed11301787bf0609e81003a2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "043c3115632a856dda04d4b8e091b2008c9b6fb93414e91fe195f8dc0e1b3267"
    "ko"
  end
  language "nl" do
    sha256 "5e4aa926dc9bbe72f01bf0e93594642590dd79bc85ce40b4f0c81f82ff9698cf"
    "nl"
  end
  language "pt-BR" do
    sha256 "23606099f1454cafbff66a3ff3a2f7e46c449850d273fff8433ec797dd0afb64"
    "pt-BR"
  end
  language "ru" do
    sha256 "fb61cb7926be6d12032fdc37e01972a807a892d58bb474781d804c05172cf04a"
    "ru"
  end
  language "uk" do
    sha256 "478f746a800017a64dd4f0bd4b7bcb65c61e17a0f4dfbb2953b4b6c9c7263ae1"
    "uk"
  end
  language "zh-TW" do
    sha256 "b74fec99a155d19f490b575a95340eba29b941aa9d39b688afa9986e405f3ada"
    "zh-TW"
  end
  language "zh" do
    sha256 "69c118c841705a07a2d57666f3f5e65b3784be5457b57ede855ee8d7d9a0859a"
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
