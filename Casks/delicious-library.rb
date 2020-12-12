cask "delicious-library" do
  version "3.9.2"
  sha256 "b7cd5d5e4a410f7191b7cfcda3433818797787cc73507c5672a3502326dc2590"

  url "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}.xml"
  name "Delicious Library"
  homepage "https://www.delicious-monster.com/"

  app "Delicious Library #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.delicious-monster.library*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.delicious-monster.library*.sfl2",
    "~/Library/Containers/com.delicious-monster.library*",
  ]
end
