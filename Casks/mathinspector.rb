cask "mathinspector" do
  version "0.9.1"
  sha256 "b08c176a7fc7b905ec3188d2b76b17f647807ec61390e3494373301853fd045d"

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
