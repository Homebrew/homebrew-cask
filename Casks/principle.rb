cask "principle" do
  version "6.4,6006"
  sha256 "e5d8c4a14b51d4263a6e70fccd552f56e7f2fb98ced6c41313c793a85f2e5002"

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
