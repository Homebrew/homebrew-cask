cask "firefox@beta" do
  version "151.0b2"

  language "cs" do
    sha256 "7e08ed80390c7ac782f735cc7510022d286bd962670f09effae417bab15915b2"
    "cs"
  end
  language "de" do
    sha256 "3e3327aacef03e63d0acd79c2c8501846ec00beb1473ad8a72e1c7a82f4a6c92"
    "de"
  end
  language "en-CA" do
    sha256 "9e02b1f233011b4b88971ed6ff85f1304d0322a148cae4cfd771e4d8b900c965"
    "en-CA"
  end
  language "en-GB" do
    sha256 "18af9055388d6ca632d4c21a51f73ca1bbc10e7e72f83d04b653b4a41a24a9e0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c1f9d907eac1d8d063e1929fea4e4bcdb6e8af4451643c5aeeefc12cc15cbec9"
    "en-US"
  end
  language "es-AR" do
    sha256 "e0fa7dacfcb03d058fb2d36e0439afaead812b8c542d987f47826bf33edf8721"
    "es-AR"
  end
  language "es-CL" do
    sha256 "4147223473d2abbae0dbc614347a5acc47692333e2a32a59bdebf9dac4357998"
    "es-CL"
  end
  language "es-ES" do
    sha256 "2721b1b0eaa8eac08db6578854f587f79bc75b5680de6ac23077379485556f18"
    "es-ES"
  end
  language "fi" do
    sha256 "8c9b2fcd86728fc3d08181eb2fb6d43ceb1600af4efb4c3570edcce79fa03f5e"
    "fi"
  end
  language "fr" do
    sha256 "390604b7d1e42bc585cb6dd7efb0dbbc51cfde82eae0cc22c3eb8ddcb73db595"
    "fr"
  end
  language "gl" do
    sha256 "4e695ef9337137a092f7de85c3349ef43ea6ed5cf979ef505730af4dfbe7c45b"
    "gl"
  end
  language "in" do
    sha256 "b7d1f80a3c1227565b9e2bbae178a4e02b6f5a861279cdbd4011b0e20e4dd109"
    "hi-IN"
  end
  language "it" do
    sha256 "91498b84eda6e90f6fddcf45fbc44cd7e790a0e8b0beea5ab2ad02ae42d0e6ea"
    "it"
  end
  language "ja" do
    sha256 "eb2f69c5fce6f802ac32aad91d575958f921b8e20d1bfadadb1eda135f0f4175"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1bb52a7a6bef2fccf9a57ec44be013a89e5cc5621512365ce2b30982892bdc2f"
    "nl"
  end
  language "pl" do
    sha256 "eec66eb26a988babaace01cebb5847998a85f07b2724c7b4604500cccf298d23"
    "pl"
  end
  language "pt-BR" do
    sha256 "bcde29fe0376fa7988b39b8bf98b2eff8e575cc9037673298e151b41772428d5"
    "pt-BR"
  end
  language "pt" do
    sha256 "eaed6851dd7379ad533543865e023c46d26f04572461f5e9f5eb72893398377a"
    "pt-PT"
  end
  language "ru" do
    sha256 "6ea8d6f0163d43c8aaeaaa83a656c242f4a07775fa03b025984f0b75c047c666"
    "ru"
  end
  language "uk" do
    sha256 "de75528a79cf55689592d041ff17b1a4a5a315443ba01d3d31c3305dc0e16a33"
    "uk"
  end
  language "zh-TW" do
    sha256 "cde5f7841fad75ad07efff902a1ea6cb106109c3766d5bcedf19043854c2e079"
    "zh-TW"
  end
  language "zh" do
    sha256 "b5c465c941871409344403236cd8d8a7e9247c83dbd2beca2489e34a8de72858"
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
