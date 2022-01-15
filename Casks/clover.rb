cask "clover" do
  version "0.1.13"
  sha256 "84be8e0c8a13de7815df60a60d49536e6931c48f7c85156f7c6bbd991df3c099"

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
