cask "electron-cash" do
  version "4.2.10"
  sha256 "8490af91914c3d5e9e3f4738f2f3a06e2a2e9963adbb3b9954eb7efd236db291"

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
