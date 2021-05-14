cask "principle" do
  version "6.7,6009"
  sha256 "d22dfc07158699063aacdfb7b23a6fca6cf3021ccfaed2ca148f980af94c8824"

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
