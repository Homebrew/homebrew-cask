cask "platypus" do
  version "5.4.1"
  sha256 "7e52b3993e3edd8c2f9d783cec23e9fc9206f8ff62ae42fe1dabff481e3d4dd5"

  url "https://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  name "Platypus"
  desc "Tool to create native applications from command-line scripts"
  homepage "https://sveinbjorn.org/platypus"

  livecheck do
    url "https://sveinbjorn.org/files/appcasts/PlatypusAppcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Platypus.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sveinbjorn.platypus.sfl*",
    "~/Library/Application Support/Platypus",
    "~/Library/Caches/org.sveinbjorn.Platypus",
    "~/Library/Preferences/org.sveinbjorn.Platypus.plist",
  ]
end
