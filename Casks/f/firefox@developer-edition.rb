cask "firefox@developer-edition" do
  version "152.0b1"

  language "ca" do
    sha256 "46f662cf16aed2d6a73e624462bb0cbd9af98ba7c4f7d8a36e4225709b1eacc2"
    "ca"
  end
  language "cs" do
    sha256 "7a8c441e2480e4375b3240a2d9f0498b925eec1608a4f0cc3f87f254d9303045"
    "cs"
  end
  language "de" do
    sha256 "54fa97b785e643d655d468e37e2acf4fa9512444255120205ab335aa4c997b95"
    "de"
  end
  language "en-CA" do
    sha256 "69cc350975defe995e92ebe45d7151da376ef4cadb376dfa3946d392a6368016"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e64f2056d1a6512f50da16d64e41ca9769348b2049a78f9864aad0ab38cb8c91"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6ca4171ad73f1c68098db1ee029ec69100792008161619e8ec419f8a0d37e909"
    "en-US"
  end
  language "es" do
    sha256 "f1440f3672824238d55d6d674c35987901bc9bdcd0197d8a45a401d468cebf56"
    "es-ES"
  end
  language "fr" do
    sha256 "6aad0aeaa973bc4d3b5794da17e07b8b9c0f30fa87aaf6b4a152c26f67e8a42e"
    "fr"
  end
  language "it" do
    sha256 "13f5778406cee71ff0f3fba779755a102379a7a5a76816ec773e937e85880c5d"
    "it"
  end
  language "ja" do
    sha256 "dee866759c5f98eec35f05a30049520f886854aee6a4188cf8b56685211cf351"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0dc78e5970be4a4ad5036ded2de40d875c671f9aff9198bee4031bead45c0788"
    "ko"
  end
  language "nl" do
    sha256 "c1a5563c9d7fcdd35331dba5911b1af5a5796bb2fac5fe0a06cd8bf2f5bd76b6"
    "nl"
  end
  language "pt-BR" do
    sha256 "052f6f4647fd44c1fef9fac9a933adf880fb580e913fb1f65f15259b3f5bc4e2"
    "pt-BR"
  end
  language "ru" do
    sha256 "df0f296ae29eba9f981b21cab51785fda1b14f96c66437c50d7ffba5c65e63ab"
    "ru"
  end
  language "uk" do
    sha256 "5037087c4d6cfe2fdebf8b4ba58afb9fac7bbd65de926bf8d8be87cd02bb3ea8"
    "uk"
  end
  language "zh-TW" do
    sha256 "a1c529cb32af2b98d3e796794c275b06e5922799d0992b25c4750abcc7ecf763"
    "zh-TW"
  end
  language "zh" do
    sha256 "fcd56dc60dd0a279cb077ec9a419c5f887ac8b748935ac1602968855af9845e1"
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
