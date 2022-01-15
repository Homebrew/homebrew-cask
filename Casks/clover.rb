cask "clover" do
  version "1.0.0"
  sha256 "e125732a914d9be5eed5625bc407b8beb4fe52a84fc4ed4afe811f09d4641f93"

  url "https://clover-desktop-app.s3.amazonaws.com/Clover-#{version}.dmg",
      verified: "clover-desktop-app.s3.amazonaws.com/"
  name "Clover"
  desc "Notes, whiteboarding, todos, and a daily planner in one tool"
  homepage "https://cloverapp.com/"

  livecheck do
    url "https://clover-desktop-app.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :yosemite"

  app "Clover.app"

  zap trash: [
    "~/Library/Application Support/clover",
    "~/Library/Saved Application State/Saved Application State/co.cloverapp.clover.savedState",
  ]
end
