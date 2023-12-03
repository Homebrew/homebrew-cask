cask "jumpcut" do
  version "0.83"
  sha256 "e559f1eed383cc8fd3270b3a50a62c7b6423635de8d49dbad5ebbab9b441c720"

  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2",
      verified: "github.com/snark/jumpcut/"
  name "Jumpcut"
  desc "Clipboard manager"
  homepage "https://snark.github.io/jumpcut/"

  depends_on macos: ">= :el_capitan"

  app "Jumpcut.app"

  zap trash: "~/Library/Preferences/net.sf.Jumpcut.plist"
end
