cask "principle" do
  version "6.29.6"
  sha256 "08464e70fc6a392d70c013cbefdb77b3c11e79bb2231fa1703c0aecd93965cb2"

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  name "Principle"
  desc "Design animated and interactive user interfaces"
  homepage "https://principleformac.com/"

  livecheck do
    url "https://principleformac.com/update2.xml"
    strategy :sparkle, &:short_version
  end

  app "Principle.app"
end
