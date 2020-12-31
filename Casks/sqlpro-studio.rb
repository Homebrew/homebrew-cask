cask "sqlpro-studio" do
  version "2020.104"
  sha256 "aab10551fb42ba581d20d1ca2230eef6943afa8103b297c414209d0e4d758236"

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
