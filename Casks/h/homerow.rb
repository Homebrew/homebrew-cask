cask "homerow" do
  version "1.5.3"
  sha256 "39616e577d74459d2a095e2da571fce2e528d5375615abf102b8080c1f091c6b"

  url "https://builds.homerow.app/v#{version}/Homerow.zip"
  name "Homerow"
  desc "Keyboard shortcuts for every button on your screen"
  homepage "https://www.homerow.app/"

  livecheck do
    url "https://www.homerow.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Homerow.app"

  zap trash: [
    "~/Library/Application Scripts/com.superultra.HomerowLauncher",
    "~/Library/Application Support/com.superultra.Homerow",
    "~/Library/Caches/com.superultra.Homerow",
    "~/Library/HTTPStorages/com.superultra.Homerow",
    "~/Library/Preferences/com.superultra.Homerow.plist",
    "~/Library/Saved Application State/com.superultra.Homerow.savedState",
  ]
end
