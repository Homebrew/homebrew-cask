cask "firefox@beta" do
  version "148.0b7"

  language "cs" do
    sha256 "9e4e5e0c65f416cde0f2d51f216c77951aaa46af1fd59c4cfe52bb80352f2b2c"
    "cs"
  end
  language "de" do
    sha256 "6becdacc0eba946c013a61864c2dba82d82cf806d8cefb4dd73d49e184aa95ad"
    "de"
  end
  language "en-CA" do
    sha256 "c8602d2f888d61ea89a847af9b7364455c847caeb4e3e48850f87f98c1ab7f04"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dd48f7ff214c027d86bd5bdb00e8b1b1c20a4a25985607f22fb73093828993fd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d9569dfd80a25e6ab23fb6e2a14ae4103fe3074cc9fcbf74bad42354fa386eab"
    "en-US"
  end
  language "es-AR" do
    sha256 "76dd406c748c143e04f14f3d5561f310b5bdc0b5a5686ba698fcc1ceec69d27e"
    "es-AR"
  end
  language "es-CL" do
    sha256 "81186c46f6b17c25634dacfd733989f0927eaab9a85ceeee95daf00e4f682612"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f0acf4de5703b62a979203f50c5f535bdc8fb09f0d8415487f903dbd32e2585e"
    "es-ES"
  end
  language "fi" do
    sha256 "6a80edf106406ad05686d9082e7b9b20f58a1641de0452088f953d3b4b9543e6"
    "fi"
  end
  language "fr" do
    sha256 "e88dfe4f35786668c009c96a50a6483335b366d5a52f1f15418a948d69cb0aef"
    "fr"
  end
  language "gl" do
    sha256 "de62e89cecb1c05cbe68dc4f8c4e52dcb58346bb9973c28b007251b0d2626e35"
    "gl"
  end
  language "in" do
    sha256 "8ea9a8167ec2a560bc523d5cece17f800f1e94386e58dc754dbc95bdc0de3032"
    "hi-IN"
  end
  language "it" do
    sha256 "9429d1e2df96b8ab232f3e4f1f5716973ff2eea17a82d6d4fd205f639448cea2"
    "it"
  end
  language "ja" do
    sha256 "1b7deae754cce09f8ac754fa3255a77dd2588378a1a8ee22f081cce08436fbd4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8c791f6b53f8fee939eab996fce6f506cb2d4c5bd2043013c2937a1efdc14fdb"
    "nl"
  end
  language "pl" do
    sha256 "3cbedabe8bb3de713eeaf485ff3430bedcb33fa8c625792a9f014c28824e9652"
    "pl"
  end
  language "pt-BR" do
    sha256 "aae771485b753f2f81a14cccd7a61c9db8f4a53afd6479ea353baa66e011f54b"
    "pt-BR"
  end
  language "pt" do
    sha256 "c8bfabc094fbcb7a197b9182f6a21ebb33f82fef464d2af2163053ef4ebe9070"
    "pt-PT"
  end
  language "ru" do
    sha256 "cfe7baab6acdf8ed13eaafd03f61d5b0c32169c36b90a68e31a5d846d434bcb0"
    "ru"
  end
  language "uk" do
    sha256 "0bd6752c250dd2447f041c1212aa468ca1ec0798453a24150018181683e3af0b"
    "uk"
  end
  language "zh-TW" do
    sha256 "f078e4249b5afdca1c5f2626d217ae2633c18af8270fceb9d17a53d5412f2f50"
    "zh-TW"
  end
  language "zh" do
    sha256 "b3a5960e7bb8bc05ec1f452938adc84772da0848d7bbab9a5fe5ae3ab007cf96"
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
