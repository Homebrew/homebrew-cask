cask "get-backup-pro" do
  version "3.7.1"
  sha256 "53adcbb18f4d7f4fbd06f97f05ce7719a622512a137595c6498bc2fe106ca9a4"

  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip",
      verified: "belightsoft.s3.amazonaws.com/updates/"
  name "Get Backup Pro #{version.major}"
  desc "Backup software with folder synchronization"
  homepage "https://www.belightsoft.com/products/getbackup/"

  livecheck do
    url "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
