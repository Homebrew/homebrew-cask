cask "crystalfetch" do
  version "1.0.1"
  sha256 "24091b4395267fda58331185ec4b31a6c491ff75b40dfa26074ccc4c8e409f83"

  url "https://github.com/TuringSoftware/CrystalFetch/releases/download/v#{version}/CrystalFetch.dmg"
  name "crystalfetch"
  desc "UI for creating Windows installer ISO from UUPDump"
  homepage "https://github.com/TuringSoftware/CrystalFetch"

  app "CrystalFetch.app"
end
