cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "25.3.8"
  sha256 arm:   "4b56669ec1c33b241bd76b0b2a0554c7bf34935d6cac53553d4f3f197ad5c2be",
         intel: "43ea2cd7a205dd806491ea96f425282781d79aeb08b7eba409794f20e7fe69fc"

  url "https://github.com/nkallen/plasticity/releases/download/v#{version}/Plasticity-darwin-#{arch}-#{version}.zip",
      verified: "github.com/nkallen/plasticity/"
  name "Plasticity"
  desc "3D modeling software for concept artists and designers"
  homepage "https://www.plasticity.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Plasticity.app"

  zap trash: [
    "~/Library/Application Support/Plasticity",
    "~/Library/Preferences/com.electron.plasticity.plist",
  ]
end
