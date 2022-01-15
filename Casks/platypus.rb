cask "platypus" do
  version "5.3"
  sha256 "efc66e943e6327896d0c1b82b0c1798c9ea17cffa03581e4949541c30d9833b0"

  url "https://sveinbjorn.org/files/software/platypus/platypus#{version.csv.first}.zip"
  name "Platypus"
  desc "Tool to create native applications from command-line scripts"
  homepage "https://sveinbjorn.org/platypus"

  livecheck do
    url "https://github.com/sveinbjornt/Platypus"
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
