cask "filefillet" do
  version "2.7.1"
  sha256 "f4d2dd6cbc50197ca23b0b842d0d064cf2343c87d030a4bba5779af5be61672e"

  url "https://release.filefillet.com/FileFillet_v#{version}.zip"
  name "FileFillet"
  desc "Efficient file organizer"
  homepage "https://www.filefillet.com/"

  livecheck do
    url "https://release.filefillet.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "FileFillet.app"

  zap trash: [
    "~/Library/Application Scripts/com.arensx.FileFillet",
    "~/Library/Containers/com.arensx.FileFillet",
  ]
end
