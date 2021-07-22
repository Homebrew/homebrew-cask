cask "firefox" do
  version "90.0.2"

  language "cs" do
    sha256 "d4bac78df2cdd805cadad078f19eca36d37c31ded8849933e4af875f281e929e"
    "cs"
  end
  language "de" do
    sha256 "8ba513688021540195857dd55164906b24a30db6799e9d84c948255f5ec55d50"
    "de"
  end
  language "en-CA" do
    sha256 "d190de6cc57ca7c51f8a05956ff1d81f06718e5e96f947cd8088d07a661b6a56"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bf9348a2692d84e3cc8a1642099adc2d9a7b3cf5bb6c9806f2e9bff0a4e73e85"
    "en-GB"
  end
  language "en", default: true do
    sha256 "73a4fba7b84ce95908962af0da870099976d8166e691554cd1c709750799dd03"
    "en-US"
  end
  language "eo" do
    sha256 "a2b7d8f1cb8d1a2458a22ddf32834bae164eca6989b96a893471323e3d651731"
    "eo"
  end
  language "es-AR" do
    sha256 "3c31306f8488033593d1b5c92a342ba0c82349b79a6e51a8f403f2f18a78afee"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7e2e89b867067c909404f76130c56786ca1a8ab51b13570e73234c7888550dbe"
    "es-CL"
  end
  language "es-ES" do
    sha256 "e55ffb1c4c77d1255f261e696dc2e9a2e1b68c30ad768e70e2ea3f3b56a3bb08"
    "es-ES"
  end
  language "fi" do
    sha256 "348ec6e65cd1603ce992e4a48e453550515d678798a9180e0782a45742a82185"
    "fi"
  end
  language "fr" do
    sha256 "2c9651dbaf2472f0b82ec914cef2e8e6c5f6c7f4684e039d3befb31f3079869e"
    "fr"
  end
  language "gl" do
    sha256 "fe91f391cd9ed37aeebc0f3d06d4a2e68fa2b50fabc7ddeed556e32cfa61b46b"
    "gl"
  end
  language "in" do
    sha256 "71730faa7c4baea1b3857185538fac2d68e76ca874f28ce55094065894830c14"
    "hi-IN"
  end
  language "it" do
    sha256 "edffec9cf876fdff3af86040c00f67efd1ec2b71be7e03aeb6ea4527a187d1b1"
    "it"
  end
  language "ja" do
    sha256 "e554bcf8fcfd1eb7abc12fd22c3c4dfb6ed736b263a656a13299a57cad2de499"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "02f8e1ddda5bb59d4231149344a38e3fc68b5301809c5d09c674422c9502c826"
    "ko"
  end
  language "nl" do
    sha256 "196088566db1dd3e496443ec63e6ca705742887ea4ad982260913201ee08873f"
    "nl"
  end
  language "pl" do
    sha256 "1e0a91d1b7a59246216fb98e02b63fc335beece49c6c4374f780bcbbdf8dcd17"
    "pl"
  end
  language "pt-BR" do
    sha256 "af244d796ad237cd615c6bfe71d28550796267f0d254a2e3cfd562f4cf1c06f3"
    "pt-BR"
  end
  language "pt" do
    sha256 "bff2ff1e00d79cbcce1592783e2cb4d66ced494ec3cf9e8862dbc04b382c9c72"
    "pt-PT"
  end
  language "ru" do
    sha256 "a924b0d92e50f9cec893487044caee22716516f5ea88be2d0d14c460dcb6c8e3"
    "ru"
  end
  language "sv" do
    sha256 "3b2816d807c5d6eb600b984f01185399e7aff833c57e09683d68671226b88e36"
    "sv-SE"
  end
  language "tr" do
    sha256 "9a69ab9737cb209e45815168d7fd7a4778198aef8b2c0090298cebd350dca50d"
    "tr"
  end
  language "uk" do
    sha256 "ab608cc55a0c0f7f0906ec32c4130e9ceb75c867c8b7c26b13c03f6279d42cda"
    "uk"
  end
  language "zh-TW" do
    sha256 "6a07ea1dedd4e64699b8d99270ade03f588bceece24406838009881a80f327aa"
    "zh-TW"
  end
  language "zh" do
    sha256 "888f8f48de6325ceb626f5a28259cab4411d54224c55205f2d59f10865bcc1ac"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
