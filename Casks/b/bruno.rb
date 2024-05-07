cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.17.0"
  sha256 arm:   "ac889487d5d7d6c17e513588c4ab54a5597f1519ac46c50ddfd502a893f866a5",
         intel: "8d322bb5c2ba15fd6ba902f377163ecd2a787bb494a7c574024e2d701b4c5f3d"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
