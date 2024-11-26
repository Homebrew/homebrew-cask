cask "firefox@beta" do
  version "134.0b1"

  language "cs" do
    sha256 "d18257036c863126a1fd11c2a89aa2880a5cbbff4265f4479ca537da6cd7a052"
    "cs"
  end
  language "de" do
    sha256 "178b3817913ba5c9c6832f17a9579da79d7890a667219cd3edaa766e21e89431"
    "de"
  end
  language "en-CA" do
    sha256 "5e1b55fd11868f9d310c268ea836057ce504e80fc421fac8d72562425a86174d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7006e89cc4d40fe6504eeec1db74f6200fab90250d3b49cc27980e1e9b993563"
    "en-GB"
  end
  language "en", default: true do
    sha256 "353be1c3e12b2b04aec11ba814e462dded1e0f5dbf549bde47c707749b598a41"
    "en-US"
  end
  language "es-AR" do
    sha256 "1c36ad60adfb307b545cb1375d6667552f5edc53d45f860993fd98e0b4abfe0b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e7f601214480a01edec70908e78eeb397ce837316ace1109f5536ce775cfcc6b"
    "es-CL"
  end
  language "es-ES" do
    sha256 "8126a5d7290a5a8ea966f26db8fdd25a16b51b9222bb7c7179c9e98fecbb2fea"
    "es-ES"
  end
  language "fi" do
    sha256 "7588a9544dfa28e947e368ed28f4184628d241182564b6755f470a99853a950e"
    "fi"
  end
  language "fr" do
    sha256 "12329f19e9bc339e2611560649261a6cff58ad5e2fe8becb0f3a7983e80aaeba"
    "fr"
  end
  language "gl" do
    sha256 "d4178855eb6d839f0b6687fd818fe4a1ee7320548a551ac9b8d96bae0704c2eb"
    "gl"
  end
  language "in" do
    sha256 "bde8931ed0da928b7071ee5fe09b4a625f013b8b5a8c447ef5b82c9ea51faa53"
    "hi-IN"
  end
  language "it" do
    sha256 "a90918f1c877ae9433e993531d8947064c9dc9d730ef5ec7a8a06be01df59625"
    "it"
  end
  language "ja" do
    sha256 "650120cf394dc75b76ae42edf706c89860c1b6f88ef3e298b77e65f9b5548d92"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "43fc760ee230d4103badc048ab98736817821bea171850749140d442e402cddc"
    "nl"
  end
  language "pl" do
    sha256 "d218fceee17d99f3b33193201e22a5afb0ec70062af9ed98a7e561b2f0fde517"
    "pl"
  end
  language "pt-BR" do
    sha256 "7bb64ac667e88a08dbd55c4c68cb0bae80919c0ab14fd7fed6b5002b19b6b2aa"
    "pt-BR"
  end
  language "pt" do
    sha256 "ebc17a2049cb3a8e5024d89b2989f7550230723a17856c2a5ed8dacc281d746a"
    "pt-PT"
  end
  language "ru" do
    sha256 "0e21f92d008092bd7e2215bebb4d5dfd29583a04828d854bd9911ebf373a510d"
    "ru"
  end
  language "uk" do
    sha256 "d26931f2267e34f7b561e31e49a54134bf9768f7779a388df5f1cbab6e57ed05"
    "uk"
  end
  language "zh-TW" do
    sha256 "08bd4ea2a00283781e213469feb9d969441703de6066c9870808a701d38d503c"
    "zh-TW"
  end
  language "zh" do
    sha256 "b38b24dcab022b21d935458e98e21656818f05867e5289ba1c424d88b640ae2a"
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
