cask "clover" do
  version "1.1.2"
  sha256 "364d87485c5f99ce7419d534c82fd2900fb34b5e043a4e5b19a899b19ae77f56"

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
