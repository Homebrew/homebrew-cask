cask "filepane" do
  version "2.0.18"
  sha256 :no_check

  url "https://dl.devmate.com/com.mymixapps.FilePane/FilePane.dmg"
  name "FilePane"
  desc "File management multi-tool"
  homepage "https://mymixapps.com/filepane"

  livecheck do
    url "https://updates.devmate.com/com.mymixapps.FilePane.xml"
    strategy :sparkle
  end

  depends_on macos: :ventura

  app "FilePane.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mymixapps.filepane.sfl*",
    "~/Library/Application Support/FilePane",
    "~/Library/Caches/com.mymixapps.FilePane",
    "~/Library/Preferences/com.mymixapps.FilePane.plist",
    "~/Users/Shared/FilePane",
  ]
end
