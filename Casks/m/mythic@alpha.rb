cask "mythic@alpha" do
  version "0.3.1"
  sha256 "b6ca8a014b19730275a97b232a0fecbafc8d868e5a3cdcecd891966d878d9aae"

  url "https://github.com/MythicApp/Mythic/releases/download/v#{version}/Mythic.zip",
      verified: "github.com/MythicApp/Mythic/"
  name "Mythic"
  desc "Unique open-source game launcher with the ability to run Windows games"
  homepage "https://getmythic.app/"

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
