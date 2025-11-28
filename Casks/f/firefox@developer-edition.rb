cask "firefox@developer-edition" do
  version "146.0b9"

  language "ca" do
    sha256 "e93ad0f9c95f46d16e5ac0253be311b8f0a2057e4e46b52cdee7a7e4b8a61bea"
    "ca"
  end
  language "cs" do
    sha256 "15d1dd78f0f0c72774abe12ab2b7165c6c31bca27f6450da1ec8bb54c43a9276"
    "cs"
  end
  language "de" do
    sha256 "fda95047f44d41202059b223aa42bfadf1e140b82387a45733b1c4a3a76fe3b7"
    "de"
  end
  language "en-CA" do
    sha256 "111215a2fbadfcbbd2d75efbfbb772c8d2c541abe87bc53dc97f4e71428a0ea9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b885874ec99156f54a5cd74ea55032f660cf26b965f34ef191a5e240d0ec82b8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "580df1bf9b2a33be88caceaf6b33f353e4359ce8802254201f396aaec0d79e95"
    "en-US"
  end
  language "es" do
    sha256 "45dcc196348b82e39ddf27e429fbb2c02b73dba299440a3db92d673a1e318d41"
    "es-ES"
  end
  language "fr" do
    sha256 "5c91d9b897a847e2c6136983e7811006c5bc9afd44bd5636cee8aee831b9ef27"
    "fr"
  end
  language "it" do
    sha256 "f5d2ecfad99622dd8dbe3d48a80e3e7f1c50cb001f66cd54dded101ad6ceead1"
    "it"
  end
  language "ja" do
    sha256 "d9c112517ec35ca2faa5942c4b310e3e4f8661846cd7bd4031556862c3131c6e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "50a47ebe4920a8779d88a0e9fadf174e1014880c5b323e9580d30b92c32bccca"
    "ko"
  end
  language "nl" do
    sha256 "2d24045f788adaaf83deb1000a81a4bcd7a18b28b2b6b4e705d289bd8c522f04"
    "nl"
  end
  language "pt-BR" do
    sha256 "0a5fd8b2b38727f725c30f95254e237ad8ff40cc1e74ccd6be0302165a71a774"
    "pt-BR"
  end
  language "ru" do
    sha256 "72e2f978be38d6b8b1b2c10f0e152c2b2df21db3cdc8fd742b9e15d6651d9141"
    "ru"
  end
  language "uk" do
    sha256 "dce598bd3153c1922e3b43fdd882234b616d530769a77b5ccbd937c051b98844"
    "uk"
  end
  language "zh-TW" do
    sha256 "9ea3813fffb02eb627694ad1f06d40315b953e1094aafb35ceb54855a61366f2"
    "zh-TW"
  end
  language "zh" do
    sha256 "e0821a3595fa5e4c0c8be8c2b18631ffe65b1f068bbb7065facc8349fdb41fd1"
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
