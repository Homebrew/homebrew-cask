cask "firefox@developer-edition" do
  version "140.0b1"

  language "ca" do
    sha256 "c4977a089598cc4ba950f7bc9af22482da8b9d4085e3ebb6291bacf1ba0cb5ef"
    "ca"
  end
  language "cs" do
    sha256 "b7ed683e4947e17e8ac7de047a230562ce24c2b85c298162f2765e0bd6c12667"
    "cs"
  end
  language "de" do
    sha256 "276a84cbaa07a148856313b4329eca46d96f9f9324b8a2f66de45bba6beaba9f"
    "de"
  end
  language "en-CA" do
    sha256 "9e4201526be904e62f65933d831644afe544f336de5fe9b936ad5490a6a31192"
    "en-CA"
  end
  language "en-GB" do
    sha256 "93aae3deae01747a7789f042498fe67769b8c8c4cc9dfad10cfb5782799648c7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2ea6241b132b7c2dd7a59d69ce47f7470b85d3dad0b12897f3ab871e2e20c50c"
    "en-US"
  end
  language "es" do
    sha256 "b56a14828276eb349b0b4419bb352d0d0369649de66513c716540f7d3a95b817"
    "es-ES"
  end
  language "fr" do
    sha256 "a6171c2d29c642f38e0c487ab91f1c79939266091ff6912650fe95c658a40aed"
    "fr"
  end
  language "it" do
    sha256 "16bc7a2cd7f3342d8a2153b23cb829664d94ea87d631deeab5b6efbf68c5dc28"
    "it"
  end
  language "ja" do
    sha256 "ad967b2f292905637d64faff3820ed85659c393f6dc097adff0098a451d1df7a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bced5644ba7e31c3754dcc0f5109a44f39c476433c5f2a04fd6b6dbf77791d2b"
    "ko"
  end
  language "nl" do
    sha256 "ea4acad443cff8aa7cdaa7f70bd9faf24838af59b6696151e4332e89c9fa7808"
    "nl"
  end
  language "pt-BR" do
    sha256 "30a08b78c6a8c60c8a9f113d0a7f4afb637df808295799e2033aec08ae6d7bc5"
    "pt-BR"
  end
  language "ru" do
    sha256 "72ef8fcf2be738dcbb8997c2fe25925d7369eb0bf46f27208081b90aeccb3c2e"
    "ru"
  end
  language "uk" do
    sha256 "28b3d6cf82a26ab20ac4c93da21c9922a05377aca51f73d894eecd0e06f2afc9"
    "uk"
  end
  language "zh-TW" do
    sha256 "6295b25bd61013cf322cfe5b26fb2db448cff4c760a278c4162f5317a0c19215"
    "zh-TW"
  end
  language "zh" do
    sha256 "ab98f62890d1674dee1b33d2b29a1ca4e3d332656bc8c3d8f4e8fce57c9b7184"
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
