cask "josm" do
  arch arm: "aarch64", intel: "x64"
  on_arch_conditional arm: "arm64", intel: "x86_64"

  version "19555"
  sha256 arm:   "2adf0d39f1de68705c3cdc7a7fbf24a8f50764eca635dac1a2772e56acd474f2",
         intel: "29dbed128a0198f614c9961b1d924ce8efec00329d747be6fba7f46e7412c6fa"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java25-#{version}-#{arch}.zip",
      verified: "github.com/JOSM/josm/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    regex(/\D*?(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end
    

  depends_on :macos

  on_arm do
    app "JOSM_25_arm64.app"
  end
  
  on_intel do
    app "JOSM_25_x86_64.app"
  end
  
  zap trash: [
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
    "~/Library/Preferences/JOSM",
    "~/Library/Saved Application State/de.openstreetmap.josm.savedState",
  ]
end
