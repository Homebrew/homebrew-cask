cask "electron-cash" do
  version "4.2.7"
  sha256 "a02ceac73818a9bb9e4787160a2af2fe251489ef7f71b018cd556c8da5fb663b"

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
