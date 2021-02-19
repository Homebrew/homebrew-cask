cask "mathinspector" do
  version "0.9.3"
  sha256 "833dbe2f362fa0df7c22939d05a71e91316dcf1d9e544414eb2985bced70a7e9"

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
