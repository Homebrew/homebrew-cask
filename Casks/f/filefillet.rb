cask "filefillet" do
  version "2.8.0"
  sha256 "5f75d37d89e52d5e4db9329664df85f362f112edb1b9ff9be1a426a18233d103"

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
