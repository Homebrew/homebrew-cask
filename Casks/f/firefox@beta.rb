cask "firefox@beta" do
  version "134.0b7"

  language "cs" do
    sha256 "7899afa479ab5718677aa3b8ce366fff3d288ff3e7dcf2d495f386c7f166a480"
    "cs"
  end
  language "de" do
    sha256 "58ee473a9d0b4e6ba60e2d25b725a3e70996e81d1df34ce03b3090b131b60879"
    "de"
  end
  language "en-CA" do
    sha256 "ba436dea18f90d7ca199f64638966629fdd1e1beb900fac9a2e8129c4112abeb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dfd265ecb87595d1c3dd2c522f78f79510206ae45ea4d0cdefdff54ed0894008"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4818eeec43bf2c89c18b4f0aac045fab50c7d3085a1d1a3cc0cb4c38fc8fa006"
    "en-US"
  end
  language "es-AR" do
    sha256 "14faaeef1d841df8692f47e29ea8490cd6661ab8dc5addc8d1b19e932208ca85"
    "es-AR"
  end
  language "es-CL" do
    sha256 "71ea22bb65bae60953b5cb2b074232dcd2bfd04f98122aa142760af3ceb42598"
    "es-CL"
  end
  language "es-ES" do
    sha256 "86d528f070bbac52c20b9e1d949c3cb91565c10e7d0de7dd43e3040422d424f1"
    "es-ES"
  end
  language "fi" do
    sha256 "a0428fd06c59ef4c00c972bde29b731ba21649252ea9240841d8845eb6ca9e22"
    "fi"
  end
  language "fr" do
    sha256 "69e2244e1554c9f39b99c46a3b3b330359c1ffb24df134bc3e1684150444aa75"
    "fr"
  end
  language "gl" do
    sha256 "bfc84ecd79cd61274e95b7b1e956c3f67d66b6060c41c2d7ab2864307ddba564"
    "gl"
  end
  language "in" do
    sha256 "fb8e14ebdce5f4f5238759e9e26c3e0db2c33bc50e53688b333db07eeee5efe5"
    "hi-IN"
  end
  language "it" do
    sha256 "732a8d38f82492e5135f8d4e25e5248661adc37f8b309b62421382769734cbfc"
    "it"
  end
  language "ja" do
    sha256 "d1fed9d1eb590d2d6fc8ad0b835c1cbb8650572d17c9dc2c5a61079bda8e1fac"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "28401382d91cf7230806b4f0b5abe39aad20d4ccdf0cfc909addef312a09a1b2"
    "nl"
  end
  language "pl" do
    sha256 "6f394e4643f91a6ef4971affc4cafec8819e06b5688461760eb9fd69cb42882b"
    "pl"
  end
  language "pt-BR" do
    sha256 "c1f1380f4b34cc5e5de81b847492f8b519100bbc78181aab6c6230d0b1349ff8"
    "pt-BR"
  end
  language "pt" do
    sha256 "cd288d10f50eefe7547bf532549e341f5d3f8449a8f44d9f8b38ca2ecec9166f"
    "pt-PT"
  end
  language "ru" do
    sha256 "ec2bb6874b2551ea4e9f94c1384ee77c190f9e72bb45c1bacfc6d363aacc5da9"
    "ru"
  end
  language "uk" do
    sha256 "5ae3de1370642894d905e7b74ff162a3584d4e79486ba379dff666aba6ea25f8"
    "uk"
  end
  language "zh-TW" do
    sha256 "4fc23b9fd0051808c7e11227a511f03d18e99f3eba60e41e458137e07983bec7"
    "zh-TW"
  end
  language "zh" do
    sha256 "7b27140e48bc6a7a5e6d5e3085703815d9b64ee13caef8e9c187e2312ee0d773"
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
