cask "sqlpro-studio" do
  version "2021.53"
  sha256 "6d9a5d0f61050871138181c5d39beb8503c13465526b046c6d1b38afbd4eaf5e"

  url "https://d3fwkemdw8spx3.cloudfront.net/studio/SQLProStudio.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/studio/"
  name "SQLPro Studio"
  desc "Database management tool"
  homepage "https://www.sqlprostudio.com/"

  livecheck do
    url "https://www.sqlprostudio.com/download.php"
    strategy :header_match
  end

  app "SQLPro Studio.app"

  zap trash: [
    "~/Library/Containers/com.hankinsoft.osx.sqlprostudio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlprostudio.sfl*",
  ]
end
