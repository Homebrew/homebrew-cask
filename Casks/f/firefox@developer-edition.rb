cask "firefox@developer-edition" do
  version "146.0b3"

  language "ca" do
    sha256 "d53a7164c97e788069b3314f042b47d26c69dbd4fcf2fed4655e01072a7204bb"
    "ca"
  end
  language "cs" do
    sha256 "d8cdd36e3c1a1e4ee87965502468b10b9c5184203aa7f31e867793afaf2b7c78"
    "cs"
  end
  language "de" do
    sha256 "25473fb7d91bef95ed7c5673b6d64e3803be2cef2c4d8ac16c401bbb2fb589bb"
    "de"
  end
  language "en-CA" do
    sha256 "331852f76bd16745bfff28eec9bd10832b317a3817e8559a578fbd1033a53fc2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0abc0d71d263e572c9154d0d9f0dad5b778d9b8492b557e43b8e1d5395757dd7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "468ff7642dff95639d265c207d9493605da39b7d244e443d1c16c458cb0e3a6c"
    "en-US"
  end
  language "es" do
    sha256 "8105afcdaa06f2e2c751563962ecf34207f935e640552c34b3ec1a488d8922ba"
    "es-ES"
  end
  language "fr" do
    sha256 "c7d9db350ab8317367cb1bfd0191c3b2093ab7f4de8220d4c3239e2deedf8903"
    "fr"
  end
  language "it" do
    sha256 "753863673ccd935980e3797d62d29c19807ac80d7e395b225ac9caa3254f5a59"
    "it"
  end
  language "ja" do
    sha256 "bd203033d558230907e3c2f6ace49bac6691a3aa3b466a27f8d1831245516250"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3428d3c9fd6961fe3789514182b7aa2635e48e5803a46eba8da9bb757a078ea9"
    "ko"
  end
  language "nl" do
    sha256 "bad6a1b0a78957b37406effc060ebe654006bcfb48a7a9af179bca2a1d5872ef"
    "nl"
  end
  language "pt-BR" do
    sha256 "6d1486788789085965dcb78ec68d885674d5b04b772e7cf366ea3a9660f7fb13"
    "pt-BR"
  end
  language "ru" do
    sha256 "45cd446720b424d9c3ff8988f32c9c03fe4318cc239878961b61f3e979dc6096"
    "ru"
  end
  language "uk" do
    sha256 "a8f159acdd702b12c9886cae402a137adf216f8ec36321e4996def0f5773a297"
    "uk"
  end
  language "zh-TW" do
    sha256 "cd266576789d02be9b7be0ff9fdf6425a994fce9c6cf5bd26aa157ce690ccef5"
    "zh-TW"
  end
  language "zh" do
    sha256 "5015a2976be3eed81eea46e3323203a7fbd3080f4d618274a23dfb64ec026e0e"
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
