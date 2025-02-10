cask "lantern" do
  version :latest
  sha256 :no_check

  url "https://s3.amazonaws.com/lantern/lantern-installer.dmg",
      verified: "s3.amazonaws.com/lantern/"
  name "Lantern"
  desc "Open Internet For All"
  homepage "https://lantern.io/"

  app "Lantern.app"

  uninstall launchctl: "org.getlantern",
            quit:      "com.getlantern.lantern"

  zap trash: [
    "~/Library/Application Support/byteexec/lantern",
    "~/Library/Application Support/byteexec/sysproxy-cmd",
    "~/Library/Application Support/Lantern",
    "~/Library/Logs/Lantern",
  ]

  caveats do
    requires_rosetta
  end
end
