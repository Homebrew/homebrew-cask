cask "mathinspector" do
  version "0.9.4"
  sha256 "faac1b958c7246fa74380b29b0c80a342030fdff1e3b7aae8a454150e344d178"

  url "https://mathinspector.com/download/mathinspector_#{version}.dmg"
  name "Math Inspector"
  desc "Visual programing environment for scientific computing with python"
  homepage "https://mathinspector.com/"

  livecheck do
    url "https://mathinspector.com/download.html"
    strategy :page_match
    regex(/mathinspector_(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "mathinspector.app"

  zap trash: "~/Library/Saved Application State/com.math.inspector.savedState"
end
