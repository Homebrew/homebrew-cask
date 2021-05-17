cask "principle" do
  version "6.8,6010"
  sha256 "ac3de2de1c5c8d212bf3f8b3df75b7687df8b5c7a4f149e27faeec36040e1ac7"

  url "https://principleformac.com/download/Principle_#{version.before_comma.dots_to_underscores}.zip"
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
