cask "electron-cash" do
  version "4.2.14"
  sha256 "dabb2ba8e694426cb4617dd39ee8c1dd41ac0748f56cce27184f3748762cd517"

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
end
