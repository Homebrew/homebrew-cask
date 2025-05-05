cask "firefox@beta" do
  version "139.0b4"

  language "cs" do
    sha256 "239a8caba9b1a23b7c98ab9f507d8718594f353dd27c079efeb8b42bd77ae7ea"
    "cs"
  end
  language "de" do
    sha256 "0e0d6110bb40aca8498523b49e48da8fc4e7ae198191aeab5b7f0e9e9baa11f2"
    "de"
  end
  language "en-CA" do
    sha256 "1cf3f9e0bdd4941243f11a55c3fb4a24dac024a942ad2b89d568b784f174fb1b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b29064c4277036ebca99ea3cbbebf7ef887247e97e34778180c3381da673aae2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c61d0fe161c6cb778a3e564f4cffa70cc7fb6bb5770586fa66c7db8ab9c31cf1"
    "en-US"
  end
  language "es-AR" do
    sha256 "13641a204ea5fbce36d1c9661fc149081e90fcd03a2840300a288861bacd5925"
    "es-AR"
  end
  language "es-CL" do
    sha256 "1fb4f9f7f01c78188b038a1116b4e19607388947067dbcad3bde3daa115e5f68"
    "es-CL"
  end
  language "es-ES" do
    sha256 "13cc2d4179bc10b58253e8a88cabb8228f9fd14fb1e237f002c7220c29c790af"
    "es-ES"
  end
  language "fi" do
    sha256 "dba286212463e1fcd3052dcaa8a66fa2d5a938052c74b655d634e700522041e3"
    "fi"
  end
  language "fr" do
    sha256 "d4ca7c3969f32f2af2f2ca4824d4439228a8e17386c9cf9fe849caba4c271280"
    "fr"
  end
  language "gl" do
    sha256 "f735a8db8e58deb85c1b2455db1924f3375df450890bd1e0a94990e5744bc831"
    "gl"
  end
  language "in" do
    sha256 "66872abb8f5eeacdbe8bd6f5c96c9566e72ebfa57b897dc64c46df2ab0fdfc84"
    "hi-IN"
  end
  language "it" do
    sha256 "e7cc58da37fa5dc49d32b85c226e25214546dab7798458f18db31c3a28420691"
    "it"
  end
  language "ja" do
    sha256 "26ee160188fcb0d59bb88e0ae10856b556a01a16254f59b122490714ac3a8cef"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9037c896ea9aedd7275c8922f4a61d5ad9e4b41ecf43f808e9e996c7d702ed33"
    "nl"
  end
  language "pl" do
    sha256 "e261443f9dd5160e941378c9c8f0aaef9159ae21172babecd0154b7481081210"
    "pl"
  end
  language "pt-BR" do
    sha256 "4140fca76b890df5b79a7accc26bba64f43b31b3818bf5567930451666cfca43"
    "pt-BR"
  end
  language "pt" do
    sha256 "8d492cdcc1af5e98bf89039474b1af4e7e4f784e82ad2645351500a2dc22bf23"
    "pt-PT"
  end
  language "ru" do
    sha256 "c90e4d1bf9440ab473eeeb6ebbf57051b30d13f5586abe7adb61487f43b15423"
    "ru"
  end
  language "uk" do
    sha256 "54d8631cc02b44f286cc3716034fa854da91486ac78dae035a1206f1ac00685f"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b41474db868d1ddf74bbf96486ea51ca8f187075bff0dabed74ef47db3114a5"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c1b40f50bc92af90419cf2851e707b815dca48ffd43a550a866c3c09e212f36"
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
  depends_on macos: ">= :catalina"

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
