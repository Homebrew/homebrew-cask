cask "mythic" do
  version "0.4.5"
  sha256 "e232fbf075c8b6558bd857b9133a6a32ee82aa0377bf94bbed68152c9b65e8a0"

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
