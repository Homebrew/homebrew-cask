cask "principle" do
  version "6.20,6026"
  sha256 "54d4b920aa489ea7113b6329ef03aac26ef11dd7ac2f9f782a8bce0b7d092be5"

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
