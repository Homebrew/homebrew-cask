cask "filefillet" do
  version "2.7.0"
  sha256 "501e04e77872daabb26b1de7268a774f9ef43f657080cfeef7b733696d380fea"

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
