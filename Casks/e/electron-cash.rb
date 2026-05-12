cask "electron-cash" do
  version "4.4.5"
  sha256 "ea4e48d345b6466df90e4e007f7d564dd4df14857e020b401b8c8668e2a907e6"

  url "https://electroncash.org/downloads/#{version.major_minor_patch}/mac/Electron-Cash-#{version}-macosx.dmg"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://electroncash.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Electron[._-]Cash[._-]v?(\d+(?:\.\d+)+)[._-]macosx\.dmg/i)
  end

  depends_on :macos

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"

  caveats do
    requires_rosetta
  end
end
