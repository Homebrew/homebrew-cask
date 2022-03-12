cask "filepane" do
  version "1.10.7,1576186002"
  sha256 "8a3ca4424b4a79485b6a4f9daf879b43430326628d18f38b6eccc1eae56ea5bd"

  url "https://dl.devmate.com/com.mymixapps.FilePane/#{version.csv.first}/#{version.csv.second}/FilePane-#{version.csv.first}.dmg",
      verified: "dl.devmate.com/com.mymixapps.FilePane/"
  name "FilePane"
  desc "File management multi-tool"
  homepage "https://mymixapps.com/filepane"

  livecheck do
    skip "timestamp is not contained in the appcast"

    url "https://updates.devmate.com/com.mymixapps.FilePane.xml"
    strategy :sparkle
  end

  app "FilePane.app"

  zap trash: [
    "~/Library/Application Support/FilePane",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mymixapps.filepane.sfl*",
    "~/Library/Caches/com.mymixapps.FilePane",
    "~/Library/Preferences/com.mymixapps.FilePane.plist",
    "~/Users/Shared/FilePane/",
  ]
end
