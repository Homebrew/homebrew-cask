cask "firefox@beta" do
  version "145.0b2"

  language "cs" do
    sha256 "3fda83f3956d636de18d92d9e0e4564596ebfba5308c637847eb26482360ee98"
    "cs"
  end
  language "de" do
    sha256 "ba3e339de8492f600de46972108cf21478509b52e658c8386336c1ce50952c02"
    "de"
  end
  language "en-CA" do
    sha256 "3e975722e6b391b64294199af1eb981c1ebb1bc248216f6a59289be3d6a9b44d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "07a599d135a8f608a3d0fba3a8cca8c8eef894fd1daaf0715f8fa7b9cbb835f2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3f4da534b1f443a83d2c96e91a1ff9d953534054096fe8c8272cda6f614fa74c"
    "en-US"
  end
  language "es-AR" do
    sha256 "de476333709f19f4e4a1084b32e72253358baef2638f0d8ff60e2ed533573c0c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "9e7f504f99ea1c808639fe0c4688ded5fed5f4278bfb3f0956d21a89023410c7"
    "es-CL"
  end
  language "es-ES" do
    sha256 "79b3e8605a3a53c3c99cfa110aa6693749fa8a348f60e3bfd0b25a5d9aa1884e"
    "es-ES"
  end
  language "fi" do
    sha256 "3e434aa5507120987ca1a4df3a8061a2bdca0cfd487533eade7adb3690c88b82"
    "fi"
  end
  language "fr" do
    sha256 "e1bf1dcb4f9217f3cc553ef7976801baab1fa7d169e4fc651b143e6fba750cb5"
    "fr"
  end
  language "gl" do
    sha256 "b3cc42c7947a9f64a2be41502167a3f10baf01af1b52f37bacc9e8024a866779"
    "gl"
  end
  language "in" do
    sha256 "25b95197741414d3b5450e5105191cd66393584f607db274a175ad11eed716bf"
    "hi-IN"
  end
  language "it" do
    sha256 "67a3e7dbfae2c401f276cd25e3dd8651a3bbd084d461716889daf29f554ff339"
    "it"
  end
  language "ja" do
    sha256 "fbd6a4bf9d78c4451e0d51eb308fa4e1617e8a4b4bc6518dd45519cf3400761c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bdea070f84d40a8cd57bb16a910b9231b9b135be654bd01f4cd7178eb698356b"
    "nl"
  end
  language "pl" do
    sha256 "00b50942467bfb0a45e9f4ea8f16c79d7116ec320d22b6cd8046660854f570e9"
    "pl"
  end
  language "pt-BR" do
    sha256 "cbf9c18352539dc68e39bc1edcf1b36cc768df30fc240d2f828edffa3a530bca"
    "pt-BR"
  end
  language "pt" do
    sha256 "54a11434e3e057c6c46c1bf3817d0dbdb1edc9e3e414eed2e55736992f4f0578"
    "pt-PT"
  end
  language "ru" do
    sha256 "61b9ecfaf744aff9402285d8cbe40555ee9f0c24ca08e85a5115a8917e31e637"
    "ru"
  end
  language "uk" do
    sha256 "e465db4c8baae7ea511e904645b8c9ac130b9b35d747405db58e98fd9f94887c"
    "uk"
  end
  language "zh-TW" do
    sha256 "f1d65cf958757339aefbc5f36ae5e05259039dc7d6dd3b4ab67bdee4d3b4f560"
    "zh-TW"
  end
  language "zh" do
    sha256 "e005ea429b3f83e56c913b160cd09204baa63bb4edb36b163628f666fcd1cae4"
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
