cask "physics" do
  version :latest
  sha256 :no_check

  url "http://praetersoftware.com/download/physics101/Physics101.dmg"
  name "Physics 101"
  desc "Physics tools and simulations"
  homepage "http://www.praetersoftware.com/new/physics101/"

  app "Physics 101.app"

  zap trash: [
    "~/Library/Application Support/Physics 101",
    "~/Library/Saved Application State/com.praetersoftware.physics101se.savedState",
  ]
end
