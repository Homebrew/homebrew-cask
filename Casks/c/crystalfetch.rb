cask "crystalfetch" do
  version "2.1.1"
  sha256 "1459e953b71895e96d2cd36275b77b82209ffbc8e0c42c4ce5bac04473ffa50b"

  url "https://github.com/TuringSoftware/CrystalFetch/releases/download/v#{version}/CrystalFetch.dmg"
  name "Crystalfetch"
  desc "UI for creating Windows installer ISO from UUPDump"
  homepage "https://github.com/TuringSoftware/CrystalFetch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "CrystalFetch.app"

  zap trash: [
    "~/Library/Application Scripts/llc.turing.CrystalFetch",
    "~/Library/Containers/llc.turing.CrystalFetch",
  ]
end
