cask "firefox@developer-edition" do
  version "149.0b7"

  language "ca" do
    sha256 "7eef7a39d835e3008d2596f8941e155543bdb35828517a16a641a210d7f6cbc7"
    "ca"
  end
  language "cs" do
    sha256 "8153d336542630b8ecf29383b4d7cc604a1a2808a36fdd2152d39c20387e517c"
    "cs"
  end
  language "de" do
    sha256 "8592130c4160ea5f5cef56ad517bb027b638a0592b0096ddc5c1d4d4ef381002"
    "de"
  end
  language "en-CA" do
    sha256 "633146b0859c461f7dd5d5027eae642b359faa1161bea7156cf8430a68548c00"
    "en-CA"
  end
  language "en-GB" do
    sha256 "27bcd9d61cc4119bd5f34fea33307418a0a83e78a46bfbcb4bd150a35dcbc796"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9f12479f71c87c6fc30aa4e38b9ae80cfdcaf95fac6281eced902cd167448f1e"
    "en-US"
  end
  language "es" do
    sha256 "4b2ea30333d8e72c58e46efbedf19c601f5b280feee3b04f409715cb9212933d"
    "es-ES"
  end
  language "fr" do
    sha256 "380048f0c0f211db9a03d373fb9b437f1c5ed98f8a9b130abd1e5c1b28374457"
    "fr"
  end
  language "it" do
    sha256 "d8d8290c35012934084b8eca8df480bc9c704a572249afe72c1ae2427ae7cbe5"
    "it"
  end
  language "ja" do
    sha256 "75606c8817717bbd7420f0f0b54751db53bece5d65cc023ebfac2a2dbe56ca7d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a1cfcf0d8dbc35f4c7c3bc316115dfcbe257b126020a54edf074511c336268b2"
    "ko"
  end
  language "nl" do
    sha256 "70a3cdd4c13a7b91cb2523c7d448ea94ca728de3f312cc38f3f702709b898239"
    "nl"
  end
  language "pt-BR" do
    sha256 "d9969aba74a5c5d4ade28f13cb697c4ace82b18c4b274892c00786a01804e964"
    "pt-BR"
  end
  language "ru" do
    sha256 "234b3e1cae18e1532566f96ba5e4003b9375f51629d84e4ced6f32c44dab4fbf"
    "ru"
  end
  language "uk" do
    sha256 "a375e5aa21ab3f28783b30cae35eae0026c21e83a257bc3a7877bd1990c209e8"
    "uk"
  end
  language "zh-TW" do
    sha256 "9b956caf8455d131bbd69a220c087e0db3193e88c4497f21960877d2bfe7b883"
    "zh-TW"
  end
  language "zh" do
    sha256 "aefa62f845d45f4133a7eccc94579f3a99fbf77ee569b49783d44476621a0cf4"
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
