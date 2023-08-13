cask "crystalfetch" do
  version "2.0.0"
  sha256 "9e9132ef286b9ea6388b1f01e2e9a9cbf62ad41b7f3bf490aa555014da01936f"

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
