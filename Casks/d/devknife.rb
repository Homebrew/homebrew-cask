cask "devknife" do
  version "1.18.0"
  sha256 "a00291d7571a58f1040558dee931253e862a01c228c39220eeda6d552b5ee196"

  url "https://files.solotuna.com/devknife/DevKnife-#{version}.dmg"
  name "DevKnife"
  desc "Collection of handy developer tools"
  homepage "https://devknife.app/"

  livecheck do
    url "https://files.solotuna.com/devknife/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DevKnife.app"

  uninstall quit: "com.solotuna.devknife"

  zap trash: [
    "~/Library/Application Support/com.solotuna.devknife",
    "~/Library/Application Support/DevKnife",
    "~/Library/Preferences/com.solotuna.devknife.plist",
  ]
end
