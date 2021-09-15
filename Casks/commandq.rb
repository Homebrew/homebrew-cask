cask "commandq" do
  version "2.0.6"
  sha256 "91c639e497994245ab32e021538ef0af0af3291625087e8dbd1d8d555c109d77"

  url "https://download.clickontyler.com/commandq/commandq20_#{version.no_dots}.zip",
      verified: "download.clickontyler.com/"
  name "CommandQ"
  desc "Never accidentally quit an app again"
  homepage "https://commandqapp.com/"

  livecheck do
    url "https://shine.clickontyler.com/appcast.php?id=43"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "CommandQ.app"
end
