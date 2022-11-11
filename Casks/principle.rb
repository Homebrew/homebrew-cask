cask "principle" do
  version "6.24,6029"
  sha256 "d9cf891f442ef892796382a60a291a5545ca406107193b96d36d551411f95488"

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
