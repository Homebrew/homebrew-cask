cask "deltawalker" do
  version "2.5.6"
  sha256 "d823244f7262351b7bc3ffa39c3a01eede50f9d079f81f32435d3642e8b9a9d3"

  # deltawalker.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://deltawalker.s3.amazonaws.com/DeltaWalker-#{version}.dmg"
  appcast "https://www.deltawalker.com/assets/js/main.js"
  name "DeltaWalker"
  desc "Tool to compare and synchronize files and folders"
  homepage "https://www.deltawalker.com/"

  app "DeltaWalker.app"

  zap trash: [
    "~/Library/Caches/com.deltopia.DeltaWalker",
    "~/Library/Containers/com.deltopia.DeltaWalker",
    "~/Library/Preferences/com.deltopia.DeltaWalker.plist",
    "~/Library/Saved Application State/com.deltopia.DeltaWalker.savedState",
  ]
end
