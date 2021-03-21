cask "principle" do
  version "6.3,6004"
  sha256 "1968b6441587cf278a991d4a3f38030395bb99f0ac992db624c2bd5509b2bf5a"

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
