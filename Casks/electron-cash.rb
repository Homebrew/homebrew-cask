cask "electron-cash" do
  version "4.2.8"
  sha256 "1cb2ea4b5ff5b37318aa9cbb59da84fa6b575840810ef8c094e1ebda78bfc887"

  url "https://electroncash.org/downloads/#{version.major_minor_patch}/mac/Electron-Cash-#{version}-macosx.dmg"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://electroncash.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Electron[._-]Cash[._-]v?(\d+(?:\.\d+)+)[._-]macosx\.dmg}i)
  end

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"
end
