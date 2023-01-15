cask "principle" do
  version "6.28,6033"
  sha256 "32927b42daa6a93d2ba050e54b7216e2ce0728981aaf659bd00b7320acb571c3"

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
