cask "commandq" do
  version "2.0.6"
  sha256 "91c639e497994245ab32e021538ef0af0af3291625087e8dbd1d8d555c109d77"

  url "https://download.clickontyler.com/commandq/commandq20_#{version.no_dots}.zip",
      verified: "download.clickontyler.com/"
  appcast "https://shine.clickontyler.com/appcast.php?id=43"
  name "CommandQ"
  homepage "https://commandqapp.com/"

  depends_on macos: ">= :sierra"

  app "CommandQ.app"
end
