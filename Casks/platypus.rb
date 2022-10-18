cask "platypus" do
  version "5.4,1233"
  sha256 "677ce20096b86c33ae0ca393ae48cceb2dacd4500bf28445e2c202150b9257ad"

  url "https://sveinbjorn.org/files/software/platypus/platypus#{version.csv.first}.zip"
  name "Platypus"
  desc "Tool to create native applications from command-line scripts"
  homepage "https://sveinbjorn.org/platypus"

  livecheck do
    url "https://sveinbjorn.org/files/appcasts/PlatypusAppcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Platypus.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sveinbjorn.platypus.sfl2",
    "~/Library/Application Support/Platypus",
    "~/Library/Caches/org.sveinbjorn.Platypus",
    "~/Library/Preferences/org.sveinbjorn.Platypus.plist",
  ]
end
