cask "electron-cash" do
  version "4.4.1"
  sha256 "2a2bbbe682a87859283b03229af416b88fc5cb369ba98fc3c1d21fb82cc9f1be"

  url "https://electroncash.org/downloads/#{version.major_minor_patch}/mac/Electron-Cash-#{version}-macosx.dmg"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://electroncash.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Electron[._-]Cash[._-]v?(\d+(?:\.\d+)+)[._-]macosx\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"

  caveats do
    requires_rosetta
  end
end
