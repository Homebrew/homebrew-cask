cask "firefox@beta" do
  version "145.0b3"

  language "cs" do
    sha256 "f5b6e4e7bf6cf42ab5a112e8d1a777ea5db495e68f952094f9106c8f39c4c2d8"
    "cs"
  end
  language "de" do
    sha256 "6dac193d2a5b3427a10f719b038825470adb4897df739a50713cefbd7d2ac83d"
    "de"
  end
  language "en-CA" do
    sha256 "2b39a65d9458ba86635d6e9e03fbdf6e0807f6a2f4601af363f0e88d390f8da6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "22ecebf62cf183b4b78eb6523d75dddcddf92d106d43462b12fe30dc81790535"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3c694dd196b7b64a7f8b27a26ea0f5c5bb32f7933792b7b07410bb036f1d6395"
    "en-US"
  end
  language "es-AR" do
    sha256 "50f36293b4d06f232531d6d36fa80c17567aa323af2211ee343bab9212d075a6"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b76986d9ff4d4f0068c86034ab04493fe7b8d4c4e2f6598f25546c6a4bce91e7"
    "es-CL"
  end
  language "es-ES" do
    sha256 "ac804eb1f8af7356bdfd77079dcd5e36d87d55682ad322096cd08115ed173570"
    "es-ES"
  end
  language "fi" do
    sha256 "4178c7e26d539f57eec2d4e6d5bc95a920963f4abab7ae15bcfe8bff425d8450"
    "fi"
  end
  language "fr" do
    sha256 "d028e1fea6dfdfb4a8b8c55db7b559b5a8d292700be338d2fe0f27511f11fdcf"
    "fr"
  end
  language "gl" do
    sha256 "939be815062a71308ddd1edae71db7eb972993bcad420457080f83388c1755be"
    "gl"
  end
  language "in" do
    sha256 "8da5375a20eb69f8e85172b05315824cb44b3ca7fa513960126b3791a6af0df2"
    "hi-IN"
  end
  language "it" do
    sha256 "ca413273a596aaf6e7b6bd404d7d60b5c2ee15d515832c632aae73e10960ab17"
    "it"
  end
  language "ja" do
    sha256 "fcf65cbee19087ca842df724c95c86fdef7ccfbe85185feafef5bf37479a9141"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "50ee983b4b91c773e0ecd72bdf15e33f22f79cb1362c77b431856a183e86f9c9"
    "nl"
  end
  language "pl" do
    sha256 "cf4479c66f2761312c5341f3e3623aed54e58e005059439283e0715273002f87"
    "pl"
  end
  language "pt-BR" do
    sha256 "e008eb1524543ec53092db1245fb65dde0725185a8dee5675e5f1e1deac9f395"
    "pt-BR"
  end
  language "pt" do
    sha256 "6d7e79c5c3a9f2e1fe0082e353af6863b9a77b717e59cab2465b257da5afc10b"
    "pt-PT"
  end
  language "ru" do
    sha256 "bd4c7c97a73e47a72138082b925d53ed3aeb90ab6584a2980bf1064d87f81a3a"
    "ru"
  end
  language "uk" do
    sha256 "7181e40c51702c6033ce331eaecd21306592af9fbd1b23572c3d8fc96073f062"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b6aafc99aa08c656e01a3d022cecf3f7f82cc61757f9fcc1eaaf335472286ee"
    "zh-TW"
  end
  language "zh" do
    sha256 "018a48b2008882ab4690d884b662e620cd5bdf8670abee569343ef35b8ffef1e"
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
