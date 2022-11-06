cask "principle" do
  version "6.23,6028"
  sha256 "3412fcb81f7813c1a33dd8212cdebe8ab41a421e9853fb588f94388cdd082342"

  url "https://principleformac.com/download/Principle_#{version.csv.first.dots_to_underscores}.zip"
  name "Principle"
  desc "Design animated and interactive user interfaces"
  homepage "https://principleformac.com/"

  livecheck do
    url "https://principleformac.com/update2.xml"
    strategy :sparkle
  end

  app "Principle.app"
end
