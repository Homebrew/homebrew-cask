cask "principle" do
  version "6.14,6016"
  sha256 "5b8c4b5b3b6153db17b72e5e5081fcd2d0fa199d9c18a8cb7dd0e2a95c3bbd96"

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
