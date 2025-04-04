cask "firefox@developer-edition" do
  version "138.0b3"

  language "ca" do
    sha256 "e69aa2165dff992da42f27340f41176cc42911590551111d5c0243fe224e2224"
    "ca"
  end
  language "cs" do
    sha256 "6b07f84c197a5a7d1849fdabc19775587e056de1a20cb835cc46342ae93b096b"
    "cs"
  end
  language "de" do
    sha256 "491521e60035d5816603531bf598c4ac583e03705eb48979973fc1b62123cf31"
    "de"
  end
  language "en-CA" do
    sha256 "0d05b1ca56e45e450e3c16f448f035c70495587e3763a23bc5dbe72f0abec9d5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "47d66218406e0919cbd1a23282403ee6f578f605cf0f9ef89514c150457e11ed"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d49694212b769651b9b68a509ee2644563a9a165a5bef01aac2f18e29741b3e5"
    "en-US"
  end
  language "es" do
    sha256 "d5c76df896f4d1a57ea1a6e8349c4fe957086fda12dc4fc7ad8f3ac6d41d3692"
    "es-ES"
  end
  language "fr" do
    sha256 "adbf1819571bd74aafe2f2e0c19cf483e00f1c217f9fe120c146b8fd5a8e51bd"
    "fr"
  end
  language "it" do
    sha256 "a629e8f06d052e7bfa774ca3c3ceddba57d9a834bd699b8eb021b0b8295f39b6"
    "it"
  end
  language "nl" do
    sha256 "dbae91b1b840fa942d554a775ded793203367a32b8a68d5f90bc4e4a6f725376"
    "nl"
  end
  language "ja" do
    sha256 "f8c8fdc5eae9152b8499f404f77e2dee28f8c506640065a0f50c22343fd80675"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "623d61f1425d297437ade216b755aa4dc557d8f50aed466bf2c2b5c574e14f8d"
    "pt-BR"
  end
  language "ko" do
    sha256 "7d11903cdabc48f72c7b0838c9be6164be4a55e261c7084edc89f02d6800b910"
    "ko"
  end
  language "ru" do
    sha256 "66d4ae5b3dc7396e189621423bbe1f6086d1b4ba4392f069b892b3774ea5659d"
    "ru"
  end
  language "uk" do
    sha256 "14988aee66b049298b0d3f5146698818050d926ac4d593dea438d05584982c0e"
    "uk"
  end
  language "zh-TW" do
    sha256 "89dbab587ed042f43f2296468686b684c3266e7d73e4acbce5ce4a81aecea7b7"
    "zh-TW"
  end
  language "zh" do
    sha256 "910c7995cd1411780e7330e2435b695d938513197a2f45821885846688ec2dba"
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
