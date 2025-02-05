cask "firefox@developer-edition" do
  version "136.0b2"

  language "ca" do
    sha256 "63f98aef6c8efe8db08c7c24693699fbfc4d8fd1a8c36af882f41b5f3da7f163"
    "ca"
  end
  language "cs" do
    sha256 "c03a84959766167436658122e807c7f81c54fc95fe45d59b676678ef7aaeda57"
    "cs"
  end
  language "de" do
    sha256 "dbc1241e0854f63f40a0713768ed8a2b1ce5aa264962784a1128cd0b1c75b736"
    "de"
  end
  language "en-CA" do
    sha256 "68c2071c26197e0f8bf0be79e006e77d98e16f3da680d7be094ab1d8af917b09"
    "en-CA"
  end
  language "en-GB" do
    sha256 "23033161cf4b3b3d67913268b4ed7ef635cc520d10b83872c8da403a52292b09"
    "en-GB"
  end
  language "en", default: true do
    sha256 "542fe24e18a1bfca628e7173dacc8eef0bdc91688171e79b434888e1a8fc9864"
    "en-US"
  end
  language "es" do
    sha256 "e58bdef4b4b38f67b867b1a4d71e464ff94f260fe3c36e40d72f4c13ffc0f75a"
    "es-ES"
  end
  language "fr" do
    sha256 "59f91bbbcfdf87cc80929b648fd0710d4a124daef95dcd0742e0c1ab50dd2947"
    "fr"
  end
  language "it" do
    sha256 "3721d226d851821a52714db19b71b44c722ec70e6da850c14921cc33d610bde3"
    "it"
  end
  language "nl" do
    sha256 "c772ac557dfb2749a379d2bc2742481db967d22f85af254d4eb70ffb911dde2d"
    "nl"
  end
  language "ja" do
    sha256 "de3c7f73a9bc7bef57594a748de6b57e045ed20f061d7561d27569057aecf089"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "b1cdafa52cd1fc650d571ac69d770f451887649ee65af3ea98efeab86d1c1be9"
    "pt-BR"
  end
  language "ko" do
    sha256 "b8eea2bdd6b4bc95c8c287c99102d7e8479e209166cb1dc62eb01d404a10e7d2"
    "ko"
  end
  language "ru" do
    sha256 "e343c560224cf82b1132a3d3ab8e8c831f680d95c368e4e903090bb16f9cc1f2"
    "ru"
  end
  language "uk" do
    sha256 "3fa9cb2897e0966a569d1ece39fd4c2160aebf03e89debc15ba4d67e8b9ee4c4"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0eff676fd09d98017bbca7b3e9965bcf5e025595c17948c9205222cafbfa060"
    "zh-TW"
  end
  language "zh" do
    sha256 "d06ac3da42d5fe34a7f7059492dee5b97eab3c00882e112bf7864721acf5482c"
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
