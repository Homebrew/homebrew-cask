cask "jumpcut" do
  version "0.84"
  sha256 "ef43d3fee801188a3f6fb9ba14bf738aa2d103bd4986b390e9820e7390c6178c"

  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2",
      verified: "github.com/snark/jumpcut/"
  name "Jumpcut"
  desc "Clipboard manager"
  homepage "https://snark.github.io/jumpcut/"

  depends_on macos: ">= :sierra"

  app "Jumpcut.app"

  zap trash: "~/Library/Preferences/net.sf.Jumpcut.plist"
end
