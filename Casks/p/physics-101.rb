cask "physics-101" do
  version "9.2.2"
  sha256 :no_check

  url "https://praetersoftware.com/download/physics101/Physics101.dmg"
  name "Physics 101"
  desc "Collection of simulations, tools, and equations across the field of physics"
  homepage "http://www.praetersoftware.com/new/physics101/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :mojave"

  app "Physics 101.app"

  zap trash: [
    "~/Library/Application Support/Physics 101",
    "~/Library/Saved Application State/com.praetersoftware.physics101se.savedState",
  ]
end
