cask "navigator" do
  version "1.0.5"
  sha256 :no_check

  url "https://oryx.nyc3.digitaloceanspaces.com/navigator-app/Navigator.dmg",
      verified: "oryx.nyc3.digitaloceanspaces.com/navigator-app/"
  name "Navigator"
  desc "Companion app for ZSA's Navigator trackpad"
  homepage "https://www.zsa.io/voyager/navigator"

  livecheck do
    url "https://oryx.nyc3.digitaloceanspaces.com/navigator-app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Navigator.app"

  uninstall quit: "io.zsa.navigator"

  zap trash: [
    "~/Library/Caches/io.zsa.navigator",
    "~/Library/HTTPStorages/io.zsa.navigator",
    "~/Library/Preferences/io.zsa.navigator.plist",
  ]
end
