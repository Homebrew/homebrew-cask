cask "jumpcut" do
  version "0.75"
  sha256 "170c669ae3dffdf029434412eb6ec5d733905583ad7ad72120179b5af3615c1a"

  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2",
      verified: "github.com/snark/jumpcut/"
  name "Jumpcut"
  desc "Clipboard manager"
  homepage "https://snark.github.io/jumpcut/"

  depends_on macos: ">= :el_capitan"

  app "Jumpcut.app"

  zap trash: "~/Library/Preferences/net.sf.Jumpcut.plist"
end
