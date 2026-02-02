cask "firefox@developer-edition" do
  version "148.0b10"

  language "ca" do
    sha256 "1f91aeac50d7b76fbd12d2bf2b42c7ac835e47ee1f15d77ea67e11d26bdeced5"
    "ca"
  end
  language "cs" do
    sha256 "c7661bf361cdc9d1a68df7d70cd7999021b0e1491c48939feac2df681ad0a7d8"
    "cs"
  end
  language "de" do
    sha256 "50bed6737a3c7c67cb06502c895ca6fa2dc9cf30e4196080dfaae1244d922961"
    "de"
  end
  language "en-CA" do
    sha256 "ecf80d93a886ea0cd9e2b5e0d364c761430f7f75293e4dadbc89bac66d142bf3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a9d86ac04da2648807cea46cb6440f418d428bb34a9a3a97b8377ddae578ad79"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c6730d106d1434824e0b62b1dd71a6e9627689b76232e2d9005802bfe3356343"
    "en-US"
  end
  language "es" do
    sha256 "1c45d4e60be4dadfd433ff2746614e60474d66a408006e270525953f0e09f866"
    "es-ES"
  end
  language "fr" do
    sha256 "1784a833d270961d87bb13b4803fe5774a56a05d6961a77b38ff8612f164a5d5"
    "fr"
  end
  language "it" do
    sha256 "159b4f4cbd241087c01430d75b61a120a890dafdf4ba6189fbb00e0e55b52542"
    "it"
  end
  language "ja" do
    sha256 "bc7117c0bf5b85ab2ac42feebb7025b3f97f39e6be3e761d7cc8c8f3a304f8a0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1b48bb49b1a4c19b6e5071a536258f1d6d45a9e439178766cafc981e8009894a"
    "ko"
  end
  language "nl" do
    sha256 "af1bfdb90cbc038654ccdd5ea2ba6b7ed13c00aa7f9a1ebcb6376374a01efe7a"
    "nl"
  end
  language "pt-BR" do
    sha256 "05fcf04537fcbe10afb530580813a98d0b78b08edb3e67b1dcac2a6c98cfa4a4"
    "pt-BR"
  end
  language "ru" do
    sha256 "af4547df9b347c15d7416c8e39764b8d3f9e691d7bc8166356efeb114690ffe8"
    "ru"
  end
  language "uk" do
    sha256 "74fb708eaf2ca876ea5b71a8f68027012bdc43e46b82ce3066ef36bbc8e23447"
    "uk"
  end
  language "zh-TW" do
    sha256 "2a816f484cf34d93fff8840445fd4966beafd4d2ab0176e9ac40e43096c038a4"
    "zh-TW"
  end
  language "zh" do
    sha256 "b7eef60ec7c716e69919f7d37c761291baf9514f563dc799ecbabf4cc435ce53"
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
