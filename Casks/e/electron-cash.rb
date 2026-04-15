cask "electron-cash" do
  version "4.4.4"
  sha256 "7e500b832d4118f1efb8e1b83a77c8bb4b32e194cd3feba7f5b0a60dd241ba5f"

  url "https://electroncash.org/downloads/#{version.major_minor_patch}/mac/Electron-Cash-#{version}-macosx.dmg"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://electroncash.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Electron[._-]Cash[._-]v?(\d+(?:\.\d+)+)[._-]macosx\.dmg/i)
  end

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"

  caveats do
    requires_rosetta
  end
end
