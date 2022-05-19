cask "clover" do
  version "1.1.4"
  sha256 "add26e0a018920c0a483db8c79a0e2cdbbd0a12bbe959aa48f737763f4f1ce8f"

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
