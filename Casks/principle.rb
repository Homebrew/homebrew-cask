cask "principle" do
  version "6.26,6031"
  sha256 "bd0fe80ca2bc1439f5c5e4c3b4cb42e0a71752812c066b3b214dbf8f14276ba0"

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
