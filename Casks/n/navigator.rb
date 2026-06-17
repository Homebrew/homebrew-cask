cask "navigator" do
  version :latest
  sha256 :no_check

  url "https://oryx.nyc3.digitaloceanspaces.com/navigator-app/Navigator.dmg",
      verified: "oryx.nyc3.digitaloceanspaces.com/navigator-app/"
  name "Navigator"
  desc "Companion app for ZSA's Navigator trackpad"
  homepage "https://www.zsa.io/voyager/navigator"

  # No version pin / livecheck on purpose: the download is a single rolling DMG
  # and the app updates itself in place via Sparkle, so brew only bootstraps the
  # install. There's no versioned URL or stable checksum to track.
  depends_on macos: :ventura

  app "Navigator.app"

  uninstall quit: "io.zsa.navigator"

  zap trash: [
    "~/Library/Caches/io.zsa.navigator",
    "~/Library/HTTPStorages/io.zsa.navigator",
    "~/Library/Preferences/io.zsa.navigator.plist",
  ]
end
