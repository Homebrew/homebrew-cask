cask "principle" do
  version "6.29"
  sha256 "db4a1101231e720fcb5eaca17c6110d3b004b493d0461ddfa8929b755414d6bd"

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
