cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "25.3.10"
  sha256 arm:   "e760f9de8ed311438920f4507fc703dad9e042f4430897a5d9375aadebf835dc",
         intel: "ca7f9dc1119b67cb2b79c1b9c638602a4dd954f16567ee3b74a4f39b3f9fcddc"

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
