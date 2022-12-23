cask "lantern" do
  version :latest
  sha256 :no_check

  url "https://s3.amazonaws.com/lantern/lantern-installer.dmg", verified: "s3.amazonaws.com/lantern"
  name "Lantern"
  desc "Open Internet For All"
  homepage "https://lantern.io/"

  app "Lantern.app"

  uninstall quit:      "com.getlantern.lantern",
            launchctl: "org.getlantern"

  zap trash: [
    "~/Library/Application Support/Lantern",
    "~/Library/Logs/Lantern",
  ]
end
