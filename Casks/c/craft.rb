cask "craft" do
  version :latest
  sha256 :no_check

  url "https://res.craft.do/native/sparkle/Craft.dmg"
  name "Craft"
  desc "Native document editor"
  homepage "https://www.craft.do/"

  depends_on macos: ">= :big_sur"

  app "Craft.app"

  zap trash: [
    "~/Library/Application Scripts/com.lukilabs.lukiapp.Craft*",
    "~/Library/Containers/com.lukilabs.lukiapp.Craft*",
  ]
end
