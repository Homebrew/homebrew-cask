cask "firefox@developer-edition" do
  version "146.0b7"

  language "ca" do
    sha256 "d3b29af276c9627927c4e95023ad576368c3971bde90ef125520a4980f1dba0c"
    "ca"
  end
  language "cs" do
    sha256 "61ed926bcbe534810dcd26a346ecebc4b0ac7aee29d03e11fed96b9ab69c9359"
    "cs"
  end
  language "de" do
    sha256 "6e1a2948808fedf3e6931a239a05775df6aed2867537a0aee3cd99271ea416d4"
    "de"
  end
  language "en-CA" do
    sha256 "db702c9fb8d502a13787c03d459bbe1c92e89cd049c183707ba8d9a60430b108"
    "en-CA"
  end
  language "en-GB" do
    sha256 "af7669737535bdf50d6ad22e19e214f872b280a0481fa70b94d4f5a26265bd3f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ba701148bcdd184468ed2e68ea1d2884226c4ffa79bb027e2188b44678005a4"
    "en-US"
  end
  language "es" do
    sha256 "b1ac6af1d8b43dc900ee88eb2808ba6c63ca1976d0d7fc298904e9d94f64d54a"
    "es-ES"
  end
  language "fr" do
    sha256 "1f112139c8b69b66bf58508607e91387e6787ffe2200442c8245933d5945b8b2"
    "fr"
  end
  language "it" do
    sha256 "17e4ac3382315d632c8270d7c258dea63ea1a4c948c6aa4e1131f81c668fdb03"
    "it"
  end
  language "ja" do
    sha256 "0d535a88833ef5698d47a670e888b596e26d612db3ce3b483bf3f9e5e5fc4e4b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "628cb071e81f954e445eff48b99ceb2b7041204a6c65a01d1acd5267895d3ef8"
    "ko"
  end
  language "nl" do
    sha256 "1200a0136e5b79093e170f3c2a8b7fabfff5437a344fd2b4e69335f02d3ee649"
    "nl"
  end
  language "pt-BR" do
    sha256 "43174b632472e17007cdd572313bbb77df14572f5a896043bd1159b0c26faf7b"
    "pt-BR"
  end
  language "ru" do
    sha256 "29870b8922213df49e6e5fdcca19c384ef2ee15e40e0029672fd1e3ac4b87bbf"
    "ru"
  end
  language "uk" do
    sha256 "847e745a25d1b3f6d11e4ecafe3ac7e31c2ff517844e7bc5ba6b2dea12ab843f"
    "uk"
  end
  language "zh-TW" do
    sha256 "d0ae225422ed2a8f4243eb6207f76d4967ed9a435d77851bfc3a3676900567ef"
    "zh-TW"
  end
  language "zh" do
    sha256 "a9c0a52eb0de33b3b58a57537d3739a543ed6ca4cd6a96a43a3ebdc820b725d6"
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
