cask "mythic" do
  version "0.4.4"
  sha256 "7aeed97df6f10e0355540d2e450d4e83d3ec1ba77171235d8c58688f12d103c4"

  url "https://dl.getmythic.app/sparkle-temp/Mythic-#{version}.zip"
  name "Mythic"
  desc "Game launcher with the ability to run Windows games"
  homepage "https://getmythic.app/"

  livecheck do
    url "https://getmythic.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Mythic.app"

  zap trash: [
    "~/Library/Application Support/Mythic",
    "~/Library/Caches/xyz.blackxfiied.Mythic.plist",
    "~/Library/HTTPStorages/xyz.blackxfiied.Mythic",
    "~/Library/HTTPStorages/xyz.blackxfiied.Mythic.binarycookies",
    "~/Library/Preferences/xyz.blackxfiied.Mythic.plist",
  ]
end
