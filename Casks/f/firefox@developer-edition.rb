cask "firefox@developer-edition" do
  version "144.0b8"

  language "ca" do
    sha256 "8aee82a8e6906d5f087261cded3d750ff594a59aae7126c518017e2242d80962"
    "ca"
  end
  language "cs" do
    sha256 "6ce37dacff400514d2bf25875a63b9fbd81855f7d733a94778e1aa024a5734da"
    "cs"
  end
  language "de" do
    sha256 "3aa0a0ffe21bd501fdeff8e74db8e67859d703ee998016a70458da23d595dee8"
    "de"
  end
  language "en-CA" do
    sha256 "f1ac7e611ec9ddd281b7e4dcc755c63b261399ebc2ea360d71bfd1ba59001dff"
    "en-CA"
  end
  language "en-GB" do
    sha256 "24be9cd4de4780839d6114de69ce8b92ce30177dac2653c26ddbbf7c88271af5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "008891d172d29fd2b15427bb8aec5a43503d069624906843309a8b22df5c51ce"
    "en-US"
  end
  language "es" do
    sha256 "9da46f02023083a4fa6270470d12359cc07a9936a7e6a47e487d9b28551319ec"
    "es-ES"
  end
  language "fr" do
    sha256 "fc77cc2070dcdc80d54aa8125710e61f208921a2e2e704f37f221221367bf60e"
    "fr"
  end
  language "it" do
    sha256 "40d31d43ec316649c7221f1b4ae979b4784145452bdd23078c25588b6637495e"
    "it"
  end
  language "ja" do
    sha256 "cf50b1f45569db4a66399dc37e8247c3fc29409394759f483c92920916572a17"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7fa8ec7ee09b9546da7abeaf8bb5fc89ef9a6bd6e859c5805d3cefe2a3f305f6"
    "ko"
  end
  language "nl" do
    sha256 "2ffeaf23bc47945180c1370429e9dea5e96319bd71f723a65d3dbfa689bb3299"
    "nl"
  end
  language "pt-BR" do
    sha256 "0ce5b1f8b145972c47cd526f53ae33b5dde82a86bf85256e63ae8bd48ec44c23"
    "pt-BR"
  end
  language "ru" do
    sha256 "111cab92cae4c618da5bf5e7f8408a544334d80f93405eb26300907c5d8c2f48"
    "ru"
  end
  language "uk" do
    sha256 "76ac7e20cc9704fa8a9fb51e249767780794574c86a9321f97b85866bdbb9f2e"
    "uk"
  end
  language "zh-TW" do
    sha256 "82663596ab7e0096e15834e9a83a6a9ba1bd5a8dd02a4d3380e35a07a15944bb"
    "zh-TW"
  end
  language "zh" do
    sha256 "275bf1d81bc6c5c36399298b1f8de8cf351836071fd908c8898fc96ac0f0d1a8"
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
