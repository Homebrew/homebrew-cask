cask "clover" do
  version "0.1.13"
  sha256 ""

  url "https://clover-desktop-app.s3.amazonaws.com/Clover-#{version}.dmg",
      verified: "clover-desktop-app.s3.amazonaws.com"
  name "Clover"
  desc "Clover digital notebook for notes, tasks and planning"
  homepage "https://cloverapp.com"

  depends_on macos: ">= :yosemite"

  app "Clover.app"

  zap trash: [
    "~/Library/Application Support/clover",
    "~/Library/Saved Application State/Saved Application State/co.cloverapp.clover.savedState",
  ]
end
