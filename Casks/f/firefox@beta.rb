cask "firefox@beta" do
  version "154.0b4"

  language "cs" do
    sha256 "458a35ffcdea5c25b9521d328e7aa87bd9d07da21137328863c25d51725d0a0a"
    "cs"
  end
  language "de" do
    sha256 "84c630911085b7435a3ba95f4af09b00d674405a790b3f78b1fbccfe7f051aa9"
    "de"
  end
  language "en-CA" do
    sha256 "2dea7a96d0d9030515b275b0ade93ae8ec2b4fbe4be269bb6f25e1bfc58cd69b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "297cf8703b9713024ce21a2208c4f597c57774c4fc8a5f1ca9c820bbce682147"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd00d1240b19dcdc7b797dced9847942af0cc9700d53258192062293a706d5bb"
    "en-US"
  end
  language "es-AR" do
    sha256 "bc8ba2f13e96cedbe2f81e57990399410a9d33e66a038337c8ca86e15d89d902"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a7ceada0596378e1e9b6b343930889bf9023dc876505e98d31ac29a8acaeafd6"
    "es-CL"
  end
  language "es-ES" do
    sha256 "7f29f222652dcc6014ced07deec1d207a71a13fea29ad236a2395a63e70b8683"
    "es-ES"
  end
  language "fi" do
    sha256 "3f1d4e12fc5c23dbf7e0d9645c5c47654c49bb4e2e72c9043317db6d2ba97f10"
    "fi"
  end
  language "fr" do
    sha256 "e50170a54492d9f3a68092befab08b5da3689ee5391aa24813f05a4db389f040"
    "fr"
  end
  language "gl" do
    sha256 "7371c23c64de90750fa42025df9e1ade5e52d46809c44a5aa10d8268696ee853"
    "gl"
  end
  language "in" do
    sha256 "227c4d28969adcecfa787cb3d9574c18d23b1d7683e6ea95ac38182f0ea4f3b4"
    "hi-IN"
  end
  language "it" do
    sha256 "7f1809d1e24420229b4fc41b5f772770a9fe52b6b9a49e5eecd231348298ac7d"
    "it"
  end
  language "ja" do
    sha256 "f0137716e9b1f4c5c3020472f0f28c4bb1f58e14d1e50854e143d5170bb3b03a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9df8bc506062a8fb75fb74ac65ee284c00fe9c3ea7c114c14215c90c40a73fe9"
    "nl"
  end
  language "pl" do
    sha256 "7eaa1f023c8787afde1f170bad71b2160164d08c99edfc9cd083996da2ae3af4"
    "pl"
  end
  language "pt-BR" do
    sha256 "925eb60820741f90905c73cf2135aedc58a9ba22317e3acc241a3fc892cc30b6"
    "pt-BR"
  end
  language "pt" do
    sha256 "08ee604f36f94ae61db1cfeb10ec399d77dd5464b280dd612954052a61dd9341"
    "pt-PT"
  end
  language "ru" do
    sha256 "852dd92c0f32b3b55b7ae78d19e0abdbc1ceb6f08e49b472523cc82a2616c605"
    "ru"
  end
  language "uk" do
    sha256 "a2fd493839ac7c90188382d4cf9b3ab51f46c2a39a4e8ea970b420083ea93402"
    "uk"
  end
  language "zh-TW" do
    sha256 "4dcaa2ac8408e3c51d63a5a407926933df8c786d54daa13b635831da36ebbcd0"
    "zh-TW"
  end
  language "zh" do
    sha256 "78cfbe3ed47abd9bf92f2ec58181e8f22dfa0c2ba2bdcaba72f666ca2647ecd4"
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
  depends_on :macos

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
