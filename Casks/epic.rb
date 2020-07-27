cask "epic" do
  version "79.0.3946.130"
  sha256 "70c99216e73fc0e3bc1051cf45b3d3b40b47a86f4da3a1b33c9a5622edfcbae5"

  # macepic-cbe.kxcdn.com/ was verified as official when first introduced to the cask
  url "https://cdn.epicbrowser.com/mac/epic_#{version}.dmg"
  appcast "https://epicbrowser.com/thank_you.php"
  name "Epic Privacy Browser"
  homepage "https://www.epicbrowser.com/"

  app "Epic.app"
end
