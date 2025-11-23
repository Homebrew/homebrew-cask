cask "pivy-app" do
  version "0.12.0"
  sha256 "2224fd902e2e2e16556e35028f91a5983545eb863afc61e7faa33a035e15e557"

  url "https://github.com/joyent/pivy/releases/download/v#{version}/pivy-#{version}-macos12.pkg"
  name "pivy"
  desc "Client for PIV cards"
  homepage "https://github.com/joyent/pivy"

  # pkg cannot be installed automatically
  installer manual: "pivy-#{version}-macos12.pkg"

  uninstall launchctl: "net.cooperi.pivy-agent",
            quit:      "net.cooperi.pivy-agent",
            pkgutil:   "net.cooperi.pivy"

  # No zap stanza required

  caveats "The installer will prompt you to insert a YubiKey or other PIV token via a dialog box."
end
