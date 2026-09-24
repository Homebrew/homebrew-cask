cask "thunderbird@beta" do
  version "157.0b4"

  language "cs" do
    sha256 "e67701209a973762a788d1e2b99e4104e1f30f56231fee994ba91c90cf273432"
    "cs"
  end
  language "de" do
    sha256 "6eedc86378c20a1454f302142e6fe1895a258df98c28e4dbeca4007cd08cab31"
    "de"
  end
  language "en-GB" do
    sha256 "3e7969bf79c92af871e469290ccb572700bd8eb8f6ab5125f4c0232f8ce5709d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "025c44bc9f33e84f60e98dcda88cc73983388595fceb46f51d9cdcafdf09f684"
    "en-US"
  end
  language "fr" do
    sha256 "5d71b13f5f479883e1a60425df6290e28aba84af3c6ac611aebe3255c41cab6b"
    "fr"
  end
  language "gl" do
    sha256 "61ec162d4d2b0eb09cacf3fb47aae8e32936db0caa906a0ad29754142bb16bf1"
    "gl"
  end
  language "it" do
    sha256 "048f6f01df9d6c87ee2fcaeba2a738803814151042e78471edc9a65f1259aae3"
    "it"
  end
  language "ja" do
    sha256 "10fb91340174b8e18c6102f6d4b55d979d2835cce7b75fcc319bb445029864c1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "53ebdf29c0f80512f6326622e5c0f33aed9aa50ad04cf4fe8bbec5f5b2ec5ce2"
    "nl"
  end
  language "pl" do
    sha256 "963bf74971322d33c98f0a6a9953e78992c0a95dacf573781e9146c0138c3d26"
    "pl"
  end
  language "pt" do
    sha256 "552d5ca23554bf59ad2c6ac612372c72684f542d03d60887a72530b5f2080d0b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "523a5c0d4dde7eb11494f8ee20529dca39e8ae392bc9d8d28a10b5d25d6d6859"
    "pt-BR"
  end
  language "ru" do
    sha256 "dcf4ee9d59599ec72f9c9da99455c6702e6e26d9bc8ace27fd4fce65da0ba8d1"
    "ru"
  end
  language "uk" do
    sha256 "481c4687945189c4b388e57273343afa32d9fb6725fa75c725e3c9d4c04ed50f"
    "uk"
  end
  language "zh-TW" do
    sha256 "e22eb9af8e6da84e05a893e75496ef9bd1ab4b8303b7fb404f6d8f80c415ec14"
    "zh-TW"
  end
  language "zh" do
    sha256 "ca90fc124a54f65ccb76172bf0c2981b83967b7e833d085999c8f2c6e07bb61f"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true
  depends_on :macos

  # Sometimes different languages can serve the latest beta version as Thunderbird Daily.app
  rename "Thunderbird*.app", "Thunderbird Beta.app"

  app "Thunderbird Beta.app"

  uninstall quit: "org.mozilla.thunderbirdbeta"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
