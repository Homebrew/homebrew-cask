cask "firefox@beta" do
  version "142.0b6"

  language "cs" do
    sha256 "871986ac1ddfd518b06740cbffae759bd0895ae71248d7a9799a01381a77266c"
    "cs"
  end
  language "de" do
    sha256 "280942316d0686cc0b63b4eae54f3ea2ec1356881ebcc8bb77edd50a98b83f7d"
    "de"
  end
  language "en-CA" do
    sha256 "28aab565dd7ab8c6db10a70b3b2a7af49d5be39ebd4942bbe36baca5bff7fb86"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7a4d63ff947f4c07154b9c915d224440fbb92a212f594808acfb80fe5c139c1a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "95b86b0120f4806f71aa05970d9c81ce2ba9e2a8cf2a90bd1d2d188f484c5e1f"
    "en-US"
  end
  language "es-AR" do
    sha256 "bb4434d6349c3bf6f5f856f8bc90063cd2fd77cf78ac6611f285e2167d83fc4a"
    "es-AR"
  end
  language "es-CL" do
    sha256 "19537a0850ff8b74d60db8eeee122de21a1ff7d64986140808ed91c49930bbcc"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d6584de01feb77692e966bf82c338cfebc25417bc4f36296386d776e247ccddd"
    "es-ES"
  end
  language "fi" do
    sha256 "5bae140eaaefa54e48cb86c8207991a06fecc30caeea7f54795482ca7ef1459c"
    "fi"
  end
  language "fr" do
    sha256 "abd9835b74dea7499f021635744162121a23a74b9a106f889fd4cd6b899152c8"
    "fr"
  end
  language "gl" do
    sha256 "56e6b02374549fc3dc16d5289f46a990b6f709c870aa194cd4167738b2566dbf"
    "gl"
  end
  language "in" do
    sha256 "af3c7bb0a99dccec9b2b105cfb98f62642b5ef10a4e7d44576ab76c1467c2762"
    "hi-IN"
  end
  language "it" do
    sha256 "fbaa9a114e8b2e48df35fc0663efcec7892a1a9d5c660ee7957af274e42077a2"
    "it"
  end
  language "ja" do
    sha256 "12c0fef0fa7e66893ae55778fa35a87cc83bf83b44b24024e7d30b808feeb9f1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dc14aeb68bb2ffdf8018c4e10b91bce87a724b0af55a6236cdb7e1521b591451"
    "nl"
  end
  language "pl" do
    sha256 "9cb2f3880e9f6fa8f922200db266a4e2146b6d62376bb5e9a3b95751a4cccf64"
    "pl"
  end
  language "pt-BR" do
    sha256 "27f1cea03e871509f455289e79a08e7858ec2d32d02f06b5b251e557fb6df0ae"
    "pt-BR"
  end
  language "pt" do
    sha256 "e4185c878a5338d7a55cf5ac58f2849e61fc21586721965f9a229937634990b1"
    "pt-PT"
  end
  language "ru" do
    sha256 "ea63cb5aca779cd6651005cd71254b8f839a387bfdec8d09e0d3ac1867856a81"
    "ru"
  end
  language "uk" do
    sha256 "c4b660fc4dd50e8036ffefcc02ac44e66bc24d9533b2e9a9c5bc56da4b44b42e"
    "uk"
  end
  language "zh-TW" do
    sha256 "39c80251203ee1be99f191621ec7f9a18082b72eb000596164128a375a7a5c3a"
    "zh-TW"
  end
  language "zh" do
    sha256 "8327cba871c039d7b017566af7e13194ef17fee96686dcce53622dc35a234ac8"
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
