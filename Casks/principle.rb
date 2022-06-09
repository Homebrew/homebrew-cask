cask "principle" do
  version "6.17,6021"
  sha256 "ccfb918bd020f030afa2e3079a1a5fb372e1f07a6485cf782123697652d2ed5a"

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
