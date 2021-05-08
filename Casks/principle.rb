cask "principle" do
  version "6.6,6008"
  sha256 "76a9eab626411470504af76fd6b4df57df80048bdfdd5fc1943ab23bfb63c7a1"

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
