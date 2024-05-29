cask "lantern" do
  version "7.8.5"
  sha256 :no_check

  url "https://lantern.s3.amazonaws.com/lantern-installer.dmg",
      verified: "lantern.s3.amazonaws.com/"
  name "Lantern"
  desc "Open Internet For All"
  homepage "https://lantern.io/"

  # The first-party download page (https://lantern.io/download?os=mac) only
  # links to an unversioned file, with no version information on the page. We
  # check GitHub releases as a best guess of when a new version is released.
  # Upstream has not marked recent releases as "latest", so we have to check
  # multiple releases until upstream reliably marks releases as "latest" again.
  livecheck do
    url "https://github.com/getlantern/lantern"
    strategy :github_releases
  end

  app "Lantern.app"

  uninstall launchctl: "org.getlantern",
            quit:      "com.getlantern.lantern"

  zap trash: [
    "~/Library/Application Support/byteexec/lantern",
    "~/Library/Application Support/byteexec/sysproxy-cmd",
    "~/Library/Application Support/Lantern",
    "~/Library/Logs/Lantern",
  ]
end
