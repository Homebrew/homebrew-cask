cask "craft" do
  version "3.3.6"
  sha256 :no_check

  url "https://res.craft.do/native/sparkle/Craft.dmg"
  name "Craft"
  desc "Native document editor"
  homepage "https://www.craft.do/"

  livecheck do
    url "https://luki-prod-us-east-1-resources.s3.amazonaws.com/native/sparkle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Craft.app"

  zap trash: [
    "~/Library/Application Scripts/com.lukilabs.lukiapp.Craft*",
    "~/Library/Containers/com.lukilabs.lukiapp.Craft*",
  ]
end
