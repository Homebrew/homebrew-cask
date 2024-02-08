cask "commandq" do
  version "3.0.1"
  sha256 "bfdc45adba4e61adcb4f630ebe59f869600eee3407e16e6023c5e27e7b8c5f8c"

  url "https://get.retina.studio/commandq/commandq20_#{version.no_dots}.zip",
      verified: "get.retina.studio/commandq/"
  name "CommandQ"
  desc "Never accidentally quit an app again"
  homepage "https://commandqapp.com/"

  livecheck do
    url "https://dash.retina.studio/appcast.php?id=43"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "CommandQ.app"
end
