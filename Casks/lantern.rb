cask "lantern" do
  version :latest
  sha256 :no_check

  url "https://raw.githubusercontent.com/getlantern/lantern-binaries/master/lantern-installer.dmg",
      verified: "raw.githubusercontent.com/getlantern/lantern-binaries/"
  name "Lantern"
  homepage "https://getlantern.org/"

  app "Lantern.app"

  uninstall quit:      "com.getlantern.lantern",
            launchctl: "org.getlantern"

  zap trash: [
    "~/Library/Application Support/Lantern",
    "~/Library/Logs/Lantern",
  ]
end
