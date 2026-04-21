cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.1.3"
  sha256 arm:   "413cd52864518889e8e39dba073b57f922ecf5627162546d3cd546f609b126a1",
         intel: "c15a465570df74737b3c9a77a62ddf2b46c1c8093c737d156c5cc6d96f5833fe"

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
