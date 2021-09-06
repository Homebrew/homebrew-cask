cask "principle" do
  version "6.10,6012"
  sha256 "c20d1a67e3d716ec1380bda97d06b281270ef27504ceb8d7ac27d5bc578d89f8"

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
