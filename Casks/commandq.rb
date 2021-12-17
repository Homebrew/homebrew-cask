cask "commandq" do
  version "3.0.0"
  sha256 "cd826add0aab404d231b42486902ae4e9f150b1ce7ff218fbca48c314c57e573"

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
