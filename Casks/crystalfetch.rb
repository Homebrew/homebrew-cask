cask "crystalfetch" do
  version "1.0.1"
  sha256 "24091b4395267fda58331185ec4b31a6c491ff75b40dfa26074ccc4c8e409f83"

  url "https://github.com/TuringSoftware/CrystalFetch/releases/download/v#{version}/CrystalFetch.dmg"
  name "Crystalfetch"
  desc "UI for creating Windows installer ISO from UUPDump"
  homepage "https://github.com/TuringSoftware/CrystalFetch"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CrystalFetch.app"

  zap trash: [
    "~/Library/Application Scripts/llc.turing.CrystalFetch",
    "~/Library/Containers/llc.turing.CrystalFetch",
  ]
end
