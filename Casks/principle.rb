cask "principle" do
  version "6.5,6007"
  sha256 "50a6fb3cad00560566aeb6edf776a72346e8402d0c2b8e5062674c0b179de38b"

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
