cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.1.1"
  sha256 arm:   "baf4d5074fc6cd464ede2ed95eed07952f9b8e591e6c90d7415f15ce43536508",
         intel: "97d3a82940c777024a97069d00b90e79bb4df6bee69c2b7c8def5b9b6b76a01f"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
