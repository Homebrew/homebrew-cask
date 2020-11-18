cask "principle" do
  version "5.13"
  sha256 "9073450d66a561c87e8ef871ca0fd3d8076539f8bd9842e6be3c18db7f9e83d3"

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast "https://principleformac.com/update2.xml"
  name "Principle"
  homepage "https://principleformac.com/"

  depends_on macos: ">= :high_sierra"

  app "Principle.app"
end
