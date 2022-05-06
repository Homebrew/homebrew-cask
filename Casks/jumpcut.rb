cask "jumpcut" do
  version "0.81"
  sha256 "fce326f94619b3eaa9108a917ada522fb18f3c206248908b8a24198de7d0baf2"

  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2",
      verified: "github.com/snark/jumpcut/"
  name "Jumpcut"
  desc "Clipboard manager"
  homepage "https://snark.github.io/jumpcut/"

  depends_on macos: ">= :el_capitan"

  app "Applications/Jumpcut.app"

  zap trash: "~/Library/Preferences/net.sf.Jumpcut.plist"
end
