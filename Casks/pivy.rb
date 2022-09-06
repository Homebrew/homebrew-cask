cask "pivy" do
  version "0.10.0"
  sha256 "100c273b3253c95d4b325e332f1f9f573018019772f48d5de99e93822de0bae6"

  url "https://github.com/joyent/pivy/releases/download/v#{version}/pivy-#{version}-macos12.pkg"
  name "pivy"
  desc "Client for PIV cards"
  homepage "https://github.com/joyent/pivy"

  pkg "pivy-#{version}-macos12.pkg"

  uninstall pkgutil:   "net.cooperi.pivy",
            launchctl: "net.cooperi.pivy-agent",
            quit:      "net.cooperi.pivy-agent"

  caveats "The installer will prompt you to insert a YubiKey or other PIV token via a dialog box."
end
