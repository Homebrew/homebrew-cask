cask "principle" do
  version "6.18,6022"
  sha256 "4d3664dfbb6e2cee669debedd017875be5ad9d40d5365ac8679eeb6ccc358dfc"

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
