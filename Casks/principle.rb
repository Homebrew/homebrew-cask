cask "principle" do
  version "6.11,6013"
  sha256 "33ca078dc9e2e5108fbd9cf02820d22bed09d809d63eac050c12f959224c9b96"

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
