cask "firefox@beta" do
  version "152.0b10"

  language "cs" do
    sha256 "221e071f3f6133346a5253be3d647cd8ea1c1f294bd93653981cbebbfe2d0d49"
    "cs"
  end
  language "de" do
    sha256 "6f3655fcf9850568557184849691413acec5d1b9cf0d55df11dde52dbf98b42d"
    "de"
  end
  language "en-CA" do
    sha256 "0905894f8808824c02e194d166c008433a57a56be9e7f32aa604d447de34db54"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ad6166802f8fd7102a447fcc1dc53d8ab7614796bc47b415e538f19a92994f45"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d8305fbf6419af3ddcd073b14ed827fc1fd75d7f61ed0cbd4d99ad538d3a3ed3"
    "en-US"
  end
  language "es-AR" do
    sha256 "152d7cbda260add4ff21214c0ac7758040bceadc7112ca8e8e5da6e9d4dab33f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "389df5a08c8551cd8d18fc14424432eee27936b510df4e750fa1503a4fc5fec1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "818e8fffcc9eabd700e6ea23a973a7859caf9077934e2f6afe57d776ced33d54"
    "es-ES"
  end
  language "fi" do
    sha256 "987d0b743b7aa66d4daf1bf05c58897368c65968c11859aed2d0975ffa7de980"
    "fi"
  end
  language "fr" do
    sha256 "cd035f87c49d89b669b46251c016aab5e583307ebcc91b08bda0ba6d81938886"
    "fr"
  end
  language "gl" do
    sha256 "0b5f49344397064cd757a4544e9f2ca84037c29b2785a5f17da7ef4e82618e5e"
    "gl"
  end
  language "in" do
    sha256 "ecb2e1d4933619bd7a244f289914c0e68f079a02ac27b62b644f472558457808"
    "hi-IN"
  end
  language "it" do
    sha256 "bfaaa9f4eafa44c55b513d31430b2119cfddcfa0b08116bd79690c452361222d"
    "it"
  end
  language "ja" do
    sha256 "c2ab9618c4c04bbf08865dc37d248258bf13a52d5cbe468f9bd49c44b6d53da7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e77e8c7392742a8328c9dec6e51fbd628ca945876e397cbc70dd05bb1e878dc9"
    "nl"
  end
  language "pl" do
    sha256 "f6ab0d925c45ec482f482e27a7a90d53d1b31f15c68b46ba5cbb46a1e43bb38c"
    "pl"
  end
  language "pt-BR" do
    sha256 "030fc31811eaab9de1df0038d5bed82dff70c9bd171e218baea5bfa94cd574fc"
    "pt-BR"
  end
  language "pt" do
    sha256 "d758192df1de7c7c59efcb2014e6fa27f5de7ada634ecacc8fd82b6d696ecae3"
    "pt-PT"
  end
  language "ru" do
    sha256 "0c6ef8cc7639f7ea2690e232d5a959c87664c4920547f4901c029091b42d9388"
    "ru"
  end
  language "uk" do
    sha256 "962cd474342183c4d48f88a1073252c6f4c335adc27eeaf99506ceb2e3e97331"
    "uk"
  end
  language "zh-TW" do
    sha256 "d8691274fe4e7cce4731bf8d2442bf093d070d8cc07f34e8322c5f65438a842d"
    "zh-TW"
  end
  language "zh" do
    sha256 "ecae60672faa775d4b6f768d83f25b93f33d8a4698fdbc0c635ad9175b136f06"
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
