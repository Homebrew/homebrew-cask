cask "pivy" do
  version "0.11.1"
  sha256 "df5857714b0a5a5710a6a36c7197b3c3c453de846b92a21ba81d569f35670549"

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
