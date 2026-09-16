cask "thunderbird@beta" do
  version "157.0b2"

  language "cs" do
    sha256 "5489b19781ac0128579de35eef64d074b63a0b76c785dfd7e889ab7ffb568db0"
    "cs"
  end
  language "de" do
    sha256 "9fbd2624684ee3acd24bd3e45854df2ea926e77dc64beb5df653314f4321492b"
    "de"
  end
  language "en-GB" do
    sha256 "30bc3eefb5ae1e16f42774004ecb4bc75851c2432e31e45424113f99142c8bb4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "63a0809b82ce60e180ea27d9188f8e27e0c96591f058ac6ec4b4d975070473ce"
    "en-US"
  end
  language "fr" do
    sha256 "2a741923816ba0294e517132fd3504241628eb28f33c67ad57a5b332929ed515"
    "fr"
  end
  language "gl" do
    sha256 "e7f65ec2d15da3d63a6d8b0816b2551dcb59b06e0e4ae2ae58e7085b1b955969"
    "gl"
  end
  language "it" do
    sha256 "7b59e18f3da1586990d63b10e912332426c22df7fb2bf358c0461fd73b368f77"
    "it"
  end
  language "ja" do
    sha256 "316dd6819f473187e8fd262d2201de358ebb0eb5b94755ab2975b657168ebf85"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e3d8c75c8d325fc7cf4c881865ca522c8ca418202185760ed6ea2e62a56f3712"
    "nl"
  end
  language "pl" do
    sha256 "325573f7f458bbd471eff907c93a341c30bb23589cf5137676ea17ca3c161205"
    "pl"
  end
  language "pt" do
    sha256 "0bee56d36adab5ea85a39f449efb18bd65a239de7b6c004a59a57a76b6d999e3"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "46aac9ea7d02dcc326e4d7b03a076410e1b1b0c76e375a231cfb8b79bc5541c8"
    "pt-BR"
  end
  language "ru" do
    sha256 "2abeffd583bc31796219c3dde446d2c188ad427d57005af4f48930aae8f6c28c"
    "ru"
  end
  language "uk" do
    sha256 "349f327e500c2a149e3af140e23d0531964530f0f3fd1a96f830171c65aa2155"
    "uk"
  end
  language "zh-TW" do
    sha256 "675a01fea0f6ca5d3f1a56429c82e9c76f876b9072b1aac10858fdbcdff168ac"
    "zh-TW"
  end
  language "zh" do
    sha256 "c47e4a75ad4db65bcc9d244ea7c4aa888ed10bae986b41d13e9ef52d408dbdb8"
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
