cask "principle" do
  version "6.2,6003"
  sha256 "21b1f16987adc22dba0f000ba502c01e60e5cc0c758a3180f12209f5d97f4b55"

  url "https://principleformac.com/download/Principle_#{version.before_comma.dots_to_underscores}.zip"
  name "Principle"
  homepage "https://principleformac.com/"

  livecheck do
    url "https://principleformac.com/update2.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Principle.app"
end
