cask "firefox@developer-edition" do
  version "154.0b9"

  language "ca" do
    sha256 "2d0864eeb453ca5f9b69378cfcb1c52a97be5cddf6d1d1c56a34a74e219ac906"
    "ca"
  end
  language "cs" do
    sha256 "a9b042bbe73b81e1f5a5ac97e82bb9ddf9e3f4cda1a3ec888a9e3db6f959481d"
    "cs"
  end
  language "de" do
    sha256 "85eb31867a9c91e3d4a6a74e020bca99de46d6eb82fdce3091b26fe4462f9182"
    "de"
  end
  language "en-CA" do
    sha256 "ffd8840d0e98fa70a72b8d997959706e9616510a4ac0e0bd69dd46121dbfcc63"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0bcd46be4d44d08dea0956d8409c57f308431072214e7e05ad3b9759b532aa9e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5ed2ade76d64ed7aaa8bf49a51decc96df52f776916426b8adaa3eca89b5fd3b"
    "en-US"
  end
  language "es" do
    sha256 "0ebf2d57501ed999323aaf0297636a7ffa0477e1121622c27e41bacbd0066062"
    "es-ES"
  end
  language "fr" do
    sha256 "5a37d4bae894991825e797b2e542b11937df96152cf46c02b91b427eef8271f4"
    "fr"
  end
  language "it" do
    sha256 "8700cb39c4cd058f751cd1a6a2aa205f213ba1c0c687dc8e898e4aeb8d56ac1a"
    "it"
  end
  language "ja" do
    sha256 "87be9c8efda9254ae42aebe2103c4077bc39b05eb4f559862c1042c2c715ba61"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8aca715fa9a5d7ba356625e8aa42673269cc16cfa01c97be02ace393752a6420"
    "ko"
  end
  language "nl" do
    sha256 "560b5abb0e5ef0e78f5af75a9d4d27ca4da4661299d3a97f400941cfc58a513d"
    "nl"
  end
  language "pt-BR" do
    sha256 "fd3cf4a447e137e08cb7d5536201f2429a9514f535c30430c2da7812df878087"
    "pt-BR"
  end
  language "ru" do
    sha256 "627d35a1c70e39bc4830e269f72fe9bd384ea8588af0340b88e81b0b6269bc71"
    "ru"
  end
  language "uk" do
    sha256 "70ca040923c3b777b714c66ec6c2c4167c1d5f9cda43a62598d4fb49ba9ff030"
    "uk"
  end
  language "zh-TW" do
    sha256 "de53e78979b66da65157d4172aa84429f60e61a7dca5b0e9e5115e0832efe90c"
    "zh-TW"
  end
  language "zh" do
    sha256 "50e3d7ae8b433c42abdcf4e0f332c93f95d85ca52d63b06e68f8ff7f44ba98ac"
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
