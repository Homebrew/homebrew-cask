cask "firefox@developer-edition" do
  version "148.0b7"

  language "ca" do
    sha256 "5a6a83a8370cae17540172b49bc020b062f587d8ea361411e2602c67140e5d9a"
    "ca"
  end
  language "cs" do
    sha256 "09f7e230ba11d4489e184c47acfa22a35cc936b9d575296cc513ce47c9139482"
    "cs"
  end
  language "de" do
    sha256 "fccb0172d48f111a6f461c692cc624e051a0043fc397ee8da4192d977c861c39"
    "de"
  end
  language "en-CA" do
    sha256 "1d4643fbebe03a0d54e7ed575792388114e7b0650b0cbb5358c5d05d8539a1fa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e8c6e81f112d6c3444d2dea899e04f5a457a7807aa3078f99d479420893a27b1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ac6c0212f24e21cbd78da5ea9ac0b23e1d4a00737df6b34f2f8b863c61e59c8b"
    "en-US"
  end
  language "es" do
    sha256 "c9f083dde60b1931b9f01c14ee2017a98651d72589090fae6175486c8798eddc"
    "es-ES"
  end
  language "fr" do
    sha256 "5821498aaa3dafec7dc5f3c05954922785da0a418fff46c551d6f777b9621aee"
    "fr"
  end
  language "it" do
    sha256 "48b956427a284870947e405229c3e103a1ef60517fd2a5a91053c91acc16e59f"
    "it"
  end
  language "ja" do
    sha256 "8620f87cb87e4f9532ab4080700401d164fb6c9fc3bf239a4b2697422bea9616"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b01bc8b08d62f54d8a6a50d4cb5ad9ecd2feec7c07bf932ae2d527f3ba53c135"
    "ko"
  end
  language "nl" do
    sha256 "5046a6c3bf1ad608c55460a478b395640d76f367fc41cbbdf32353ae014991f3"
    "nl"
  end
  language "pt-BR" do
    sha256 "f591c345c7cdd8643d32868b9186ad14301021a03520d2bae4a693a7876de589"
    "pt-BR"
  end
  language "ru" do
    sha256 "a2f8541f183ee6a453942c72974bdf0fcd68074d8ae76f36856cbd77a09be1c3"
    "ru"
  end
  language "uk" do
    sha256 "24b103e83fc39706cb04ad334dc1e72748ebdb992482d7855307b9c163307d25"
    "uk"
  end
  language "zh-TW" do
    sha256 "f1a7ec449bcf981f5a4b8c8165ed9a269fa925c85381606f96338aa2fa86f81c"
    "zh-TW"
  end
  language "zh" do
    sha256 "be62217ae94c638fc801c8159606d0501a36068211fef5f71ad5a3524d96db5a"
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
