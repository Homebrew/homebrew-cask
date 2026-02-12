cask "firefox@beta" do
  version "148.0b14"

  language "cs" do
    sha256 "c060ac09c55c79709af9214f7d3711925793df081e20dda44762da6ae165b72d"
    "cs"
  end
  language "de" do
    sha256 "d6a974565a0ba56d6cbc724191707ba91896add63de66633eb30d41fa85e399d"
    "de"
  end
  language "en-CA" do
    sha256 "75e7fb819eb440c46bfc17bb1d69497ee562a570fb0f131e4e3c7197e9398aef"
    "en-CA"
  end
  language "en-GB" do
    sha256 "06c21cee7b201240c0e7ba801ae22176dfe1f7c8f9ea1ba7c2ac395020bdab92"
    "en-GB"
  end
  language "en", default: true do
    sha256 "301d0df76e8cc8f3b41b7c59b840c4bef52b8f532c79c7fed3457eb4a7e9a6b9"
    "en-US"
  end
  language "es-AR" do
    sha256 "e7a17ee872d907730d82972a55f05f5b94ef7ca2db7742d0acf7b9bdcd5cc9c7"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d17e1ffa43910fdb21cb74e06784c0563b8f609a6b491e70b92511118a4bbea9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "84706496a67db21bdf1e87a9cc08cf49b87e3eb83fcb151a2177096ae8715b23"
    "es-ES"
  end
  language "fi" do
    sha256 "4c0720234dab848ca5d15e9e99c04c9f25a33ab9538ae90e41ef72702edeff27"
    "fi"
  end
  language "fr" do
    sha256 "5cc82d37b49f5fc4e0aeeb42e40bdd65ec4ae415e4713675de72f5feb510c3fe"
    "fr"
  end
  language "gl" do
    sha256 "db59a4bbd1277bcae798dc3e9be401d88f630e6ea8ab8ae6ace5d5884a3cdbb9"
    "gl"
  end
  language "in" do
    sha256 "89ca99e9ca42d23de23e79519866ac15c3872e0638356f27fbf380946d4620c5"
    "hi-IN"
  end
  language "it" do
    sha256 "3e2a87565c849bf685a0522f1536f2a66bdbaad52a361647a993cc956cb74ec6"
    "it"
  end
  language "ja" do
    sha256 "e7af2cb8d784584ab5ae6e66dca99aa550bf9bb6e83f94d5145dc46d8b1b49ed"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5c04b097f9707f367305a4cdddd5e886ec2e8d0734d59bd23787288151a5d0fa"
    "nl"
  end
  language "pl" do
    sha256 "376af981ed3b58a1d79cbd661f2dd5002c1ad8268ec7915be0e4716c3900ec54"
    "pl"
  end
  language "pt-BR" do
    sha256 "aae870df359d36478c7dc951c4a0abd851d887a62174fa53521df6856bbe1946"
    "pt-BR"
  end
  language "pt" do
    sha256 "2af9fc936e567256ff9acf55307bc0f900b5d666386175141bb87ac12bbd8d77"
    "pt-PT"
  end
  language "ru" do
    sha256 "fab422707a0c868201e8a342a604fe231a9eabe38bb30601b2e1ede9007a6414"
    "ru"
  end
  language "uk" do
    sha256 "6d398a8e197eda79d25a601fbcc8860c0f90706871d8cf743f973e00f28dcdcb"
    "uk"
  end
  language "zh-TW" do
    sha256 "18e62a493e6e0f8a6b279b715f8cdebbfde0c0bd37c637ee5b025b6ca33ec194"
    "zh-TW"
  end
  language "zh" do
    sha256 "657efa850dceb1c584b50aa79aa3d556bab05ea6cb4d66ed2ceaa023cc8a5555"
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
