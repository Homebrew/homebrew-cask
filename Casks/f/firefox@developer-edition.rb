cask "firefox@developer-edition" do
  version "130.0b5"

  language "ca" do
    sha256 "68b226b6909759b96f2f12685356198937b9c064b6c37c2a7f346069baf47296"
    "ca"
  end
  language "cs" do
    sha256 "b33dd599d277f00ed9171d70638830062ea02b229a9b0cee1b65731f272b18fd"
    "cs"
  end
  language "de" do
    sha256 "fe6ac56c52861ecaecb654c30504422aff5222f7b839005115bcda7ead1be1f8"
    "de"
  end
  language "en-CA" do
    sha256 "69c489bd0c6d6e98296da6b4df1cf34efcdf723b950e7c9b3619e5688dbed3b8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "27acffe57a242ec5d81f962923e694bc2fcd7efae8b1862fa8d67aca8fe6ca36"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e00a7369452eb1876739671a4279ec3b8926375eaa49705103775c4b3a7fbb0"
    "en-US"
  end
  language "es" do
    sha256 "5991d085873034b1cc7b6816a5c6470de58d2c1a69f0b84359afe9e31ad54c81"
    "es-ES"
  end
  language "fr" do
    sha256 "b87f0f538a69df8627308b36482014c31cb665f66896a8bbe8731eb6e7d5c3ea"
    "fr"
  end
  language "it" do
    sha256 "8d83947c17c0285a55828d4de06a048ef4d379fda3c3038435f08ebb43a56741"
    "it"
  end
  language "nl" do
    sha256 "de813544f103c4f299ab6c98e72393d397297bffba0cab387f2cb4af87552b8d"
    "nl"
  end
  language "ja" do
    sha256 "4ac07beef2c81717b66e7c52991d6a7a83b60a9370d370add031ff0b4e3e03ca"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "99ea01c7c0686dfcd1efe1e6d09092b14240b97949a3f4f01cf636176ab4da7b"
    "pt-BR"
  end
  language "ko" do
    sha256 "507234e52d94035d9f50948248ac4e1ca48d263331ddaba62198a49ef761d8aa"
    "ko"
  end
  language "ru" do
    sha256 "9a37f51d381cb74f081cd52bb7bf4683c0419a08687effb71134b28a75b844e2"
    "ru"
  end
  language "uk" do
    sha256 "4e3739f97f0f721839085075342556980fb0f3dabf64cd7171c2054bcd68d4bc"
    "uk"
  end
  language "zh-TW" do
    sha256 "65f4a1499209c7307ef2e2e22ea9d77cbdaef8e97e096c42a0837619ae9d1a37"
    "zh-TW"
  end
  language "zh" do
    sha256 "487c3a178633d6b79b66dc96eedc50b36a01b54c9cd454aebdb295495a752ce9"
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
