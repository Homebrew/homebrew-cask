cask "thunderbird@beta" do
  version "161.0b2"

  language "cs" do
    sha256 "d34595da6ad83d4d43cc9073a0bc88d07c2dd6c83ffc4de267a07daa44d91c26"
    "cs"
  end
  language "de" do
    sha256 "b509375543be43c7fd4d82ed58dde8eff11921abee7bf549d8966b7a8ec04386"
    "de"
  end
  language "en-GB" do
    sha256 "5304ed0031455a7f8ab756e495e5dc99bfdfc12b07153382e1de665eddf48f1f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a601732780f80bf0fd0aec7929aada7b65802fead29c5271f42266f34295fbff"
    "en-US"
  end
  language "fr" do
    sha256 "c06911d92562e589b17e41f3ff6e726502da423253018296369b5a2b442651d0"
    "fr"
  end
  language "gl" do
    sha256 "601a402a5872a57906036e9fd97049e2a433fccafa86d414ab10792a02b4566b"
    "gl"
  end
  language "it" do
    sha256 "e2e9138587a6530f7edcfc07010cbde76b3a346d35e0b2e5bae7ea8a10232fcb"
    "it"
  end
  language "ja" do
    sha256 "7f20bd82a17787e5974214fe4ac8202e5195fcf2647efff5e8220a5386efa427"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "20d2a6cd35872547e91d16d45f7936a6957b418296839aec74fa1105960c2a75"
    "nl"
  end
  language "pl" do
    sha256 "888cd55ac4a66ba1fa984ee26422b512a8cd66cd012ea5f1f2bd528f95b5fc54"
    "pl"
  end
  language "pt" do
    sha256 "9343b89f2c86d81abb217c46df6a39eeba0bb5149e75432bbc72d2702490e2df"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e9e9ef14b5164d65c31f538ee4ee9ce90d997a8c087c518036c51281c671fc83"
    "pt-BR"
  end
  language "ru" do
    sha256 "7749195e48ee14d5f0eabfaec00e6f79c2332bb8913f8420388ef6634fee275f"
    "ru"
  end
  language "uk" do
    sha256 "defe6ec3660a2a873e2b9351c766f42c61bdd35645472226e250dc272db14c79"
    "uk"
  end
  language "zh-TW" do
    sha256 "5ce390f7ae43aedfc115fdcdb3a1b8c709d896079a54a67b8315db2ab17164ef"
    "zh-TW"
  end
  language "zh" do
    sha256 "52eef025b6207640f6f548908b62a36465728ec7163756781eb2809e31114213"
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
