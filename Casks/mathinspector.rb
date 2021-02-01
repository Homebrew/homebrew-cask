cask "mathinspector" do
  version "0.9.0"
  sha256 "44db32bc8d01f15041bcdc5996fff5df38b5ecbbb3b5d9ad68cf0af9ff8f6c25"

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
