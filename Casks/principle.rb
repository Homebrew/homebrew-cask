cask "principle" do
  version "6.19,6023"
  sha256 "cdc34f3033748fcb4ada36618dbf7dc23394595714b59b2b8adeb2ab73ebb0bb"

  url "https://principleformac.com/download/Principle_#{version.csv.first.dots_to_underscores}.zip"
  name "Principle"
  desc "Design animated and interactive user interfaces"
  homepage "https://principleformac.com/"

  livecheck do
    url "https://principleformac.com/update2.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Principle.app"
end
