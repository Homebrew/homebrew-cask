cask "pivy-app" do
  version "0.12.1"
  sha256 "78340ec28f4e7d6870ebb167059ac21beb00729d300a092f8f6774c2c6ae33fa"

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
