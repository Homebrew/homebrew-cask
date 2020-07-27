cask "commandq" do
  version "2.0.5"
  sha256 "9f7529ecfe83f8a77eeb0d8ad42cacfd843ecfa30508d4aa243546fb8655627b"

  # download.clickontyler.com/ was verified as official when first introduced to the cask
  url "https://download.clickontyler.com/commandq/commandq20_#{version.no_dots}.zip"
  appcast "https://shine.clickontyler.com/appcast.php?id=43"
  name "CommandQ"
  homepage "https://commandqapp.com/"

  depends_on macos: ">= :sierra"

  app "CommandQ.app"
end
