cask "electron-cash" do
  version "4.2.4.1"
  sha256 "a335f46b6899ba1692ce75cbf4172b835b8ab6b46d38a62863ebaabf34d6570d"

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
