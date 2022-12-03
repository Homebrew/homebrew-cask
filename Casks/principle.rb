cask "principle" do
  version "6.27,6032"
  sha256 "c384d9f2f3b7c2ff31b7a3f8fba93953e8ac3bc6d0a4e283cc88bd7a17f028ab"

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
