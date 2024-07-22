cask "firefox@developer-edition" do
  version "129.0b7"

  language "ca" do
    sha256 "384a7865e9a8da6f9d455104df3a3dec4968ff17522f54f7d2c926f6321c4fa1"
    "ca"
  end
  language "cs" do
    sha256 "4bc0d96e61874bcdc62373eefb5c617f56a0d49b6d13226cc3e2857db1666f48"
    "cs"
  end
  language "de" do
    sha256 "f754a0c0225c3a079e23d9f06f09548485918789e1d6c72194027aa6f63a1d9e"
    "de"
  end
  language "en-CA" do
    sha256 "d19c2c9628dfaa901d93878b0fab0bd9441b4ce20d6fa4e9c4cbc1a2e0cd1441"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d8284783e8e63d16a7ac8bea13781e0cdee407aa735e00d6ca1bb97d2f03e163"
    "en-GB"
  end
  language "en", default: true do
    sha256 "20e70acb52fe2b08f369635453db79d7406d0f5ad02cbe6fa9266ace9714a17a"
    "en-US"
  end
  language "es" do
    sha256 "c6a1e6c6f06ac61ca6cd4a0b8d76aac9160d702e7eeb122d27323f4363a70c3e"
    "es-ES"
  end
  language "fr" do
    sha256 "6f8c03084d2abdc0b680f18964f672bf77fde0e7cb8821a4cecef9eeb92349e1"
    "fr"
  end
  language "it" do
    sha256 "d1daea6db99a3e0750d0b4c7e511bed7d030f81e6428ef3d209d27ea87b7ed65"
    "it"
  end
  language "nl" do
    sha256 "850fdf1706f95337a2962a498a803851934883b6f451a9417ceacc96ae8e96e7"
    "nl"
  end
  language "ja" do
    sha256 "55454d2c2cc0be2fbba429f4f6e6ac36ac667204d8930b1a69e6cec910622026"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "c5b39934989ec371bb68f4d970afb2c7f99ae656a80416361ba4131935c8a7a9"
    "pt-BR"
  end
  language "ko" do
    sha256 "df6b71894862b9a48c5287b678ee437573f4303f37f24c40af9d11f3b8c0c468"
    "ko"
  end
  language "ru" do
    sha256 "834a26d9bb42cb5c3b8e5c29cf329a2feb13d6850ca7a2def1e875ca71d4089f"
    "ru"
  end
  language "uk" do
    sha256 "6056848f37b931f0d1a39821066991656ae73d89e3068c00e9029d7258b9f7c0"
    "uk"
  end
  language "zh-TW" do
    sha256 "8e09c5bbbfdf5f88339ab94baa062718f25699e047143240ec25b25469768ec8"
    "zh-TW"
  end
  language "zh" do
    sha256 "156cadacfe4ec2e6d21c5ccb40e3265fbd9dc278024fca406fc63b8415e57252"
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
  depends_on macos: ">= :catalina"

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
