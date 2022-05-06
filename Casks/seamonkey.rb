cask "seamonkey" do
  version "2.53.12"

  language "de" do
    sha256 "705b205e94c6ca0296acb629b183933d368054885fd1d28d3eb74acfbae070a0"
    "de"
  end
  language "en-GB" do
    sha256 "be1508132439f117f71a4e0652677ee82913fa0e75344e12f491c881adf4b464"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "395b9db941e2619ffb36f1451fc81a5087d70d51ac55a3be803b9e1e86a4cf12"
    "en-US"
  end
  language "fr" do
    sha256 "2227746dd37ba063bfe5c5c24ae5f55ce828d3b09c65055d738c93f68ddbfb4f"
    "fr"
  end
  language "it" do
    sha256 "ded0784f6e2aa321497e42ab600b450d7a16aadbea8dcdac5cd59d1dd3a815c8"
    "it"
  end
  language "ru" do
    sha256 "dc7bd71c54c04aa83b20fa75d39eb73cc44fc1809c1efed8d09337bce5d0a7da"
    "ru"
  end

  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg",
      verified: "mozilla.org/pub/seamonkey/releases/"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)+)\.en-US\.mac\.dmg}i)
  end

  auto_updates true

  app "SeaMonkey.app"

  zap trash: [
    "~/Library/Application Support/SeaMonkey",
    "~/Library/Caches/SeaMonkey",
    "~/Library/Preferences/org.mozilla.seamonkey.plist",
    "~/Library/Saved Application State/org.mozilla.seamonkey.savedState",
  ]
end
