cask "principle" do
  version "6.22,6027"
  sha256 "f40e265adadd8a78e77163f52b31e648122a0c9539bb77431d04f9ff8d715ebc"

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
