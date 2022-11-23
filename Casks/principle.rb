cask "principle" do
  version "6.25,6030"
  sha256 "d151e730b6d5eb79070663e6e31783dfdcf496ea6558aff7c2c3ba92e05d8d06"

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
