cask "icab" do
  version "6.0.0"
  sha256 "c4494c5a944b9e03ccfc6e297bcd6bc971ddb3053a40bae5bca706f444f29710"

  # icab.clauss-net.de/ was verified as official when first introduced to the cask
  url "https://icab.clauss-net.de/icab/iCab_#{version}_Intel.zip"
  appcast "http://www.icab.de/dl.php"
  name "iCab"
  desc "Alternative web browser"
  homepage "http://www.icab.de/"

  app "iCab #{version} (64 Bit Intel for macOS 10.9-10.15)/iCab.app"
end
