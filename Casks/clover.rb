cask "clover" do
  version "1.1.5"
  sha256 "69052d1c6f4e5ee21a4254cb077ceb6887a5e76e7ec633051d76baf3468c7d54"

  url "https://clover-desktop-app.s3.amazonaws.com/Clover-#{version}.dmg",
      verified: "clover-desktop-app.s3.amazonaws.com/"
  name "Clover"
  desc "Notes, whiteboarding, todos, and a daily planner in one tool"
  homepage "https://cloverapp.com/"

  livecheck do
    url "https://clover-desktop-app.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Clover.app"

  zap trash: [
    "~/Library/Application Support/clover",
    "~/Library/Saved Application State/Saved Application State/co.cloverapp.clover.savedState",
  ]
end
