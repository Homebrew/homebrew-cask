cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "2571daaf11e45b723d238fb6ed85fbfc9476ae11afcae99c6ae77714570367ac",
         intel: "7ab05ffa9e01f4430490bfc5eb73fbf65f675e08ac03bb4005b9f066586fb8dd"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
