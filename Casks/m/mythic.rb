cask "mythic" do
  version "0.4.3"
  sha256 "352a926180c849f0ad718ac11e093d42f3a04d3d7363daf7c4f17b5736f23d28"

  url "https://dl.getmythic.app/sparkle-temp/Mythic-#{version}.zip"
  name "Mythic"
  desc "Game launcher with the ability to run Windows games"
  homepage "https://getmythic.app/"

  livecheck do
    url "https://dl.getmythic.app/sparkle-temp/appcast.xml"
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
