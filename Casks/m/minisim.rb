cask "minisim" do
  version "0.10.0"
  sha256 "b6af5775f0afb1b3c12a438fc35c1f4207a87341fbd39e256e6d3fbfa5aca64d"

  url "https://github.com/okwasniewski/MiniSim/releases/download/v#{version}/MiniSim.app.zip",
      verified: "github.com/okwasniewski/MiniSim/"
  name "MiniSim"
  desc "App for launching iOS and Android simulators"
  homepage "https://www.minisim.app/"

  depends_on macos: ">= :monterey"

  app "MiniSim.app"

  uninstall quit: "com.oskarkwasniewski.MiniSim"

  zap trash: [
    "~/Library/HTTPStorages/com.oskarkwasniewski.MiniSim",
    "~/Library/Preferences/com.oskarkwasniewski.MiniSim.plist",
  ]
end
