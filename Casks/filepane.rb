cask "filepane" do
  version "1.10.7,1576186002"
  sha256 "8a3ca4424b4a79485b6a4f9daf879b43430326628d18f38b6eccc1eae56ea5bd"

  # dl.devmate.com/com.mymixapps.FilePane/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mymixapps.FilePane/#{version.before_comma}/#{version.after_comma}/FilePane-#{version.before_comma}.dmg"
  appcast "https://updates.devmate.com/com.mymixapps.FilePane.xml"
  name "FilePane"
  desc "File management multi-tool"
  homepage "https://mymixapps.com/filepane"

  app "FilePane.app"

  zap trash: [
    "~/Library/Application Support/FilePane",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mymixapps.filepane.sfl*",
    "~/Library/Caches/com.mymixapps.FilePane",
    "~/Library/Preferences/com.mymixapps.FilePane.plist",
    "~/Users/Shared/FilePane/",
  ]
end
