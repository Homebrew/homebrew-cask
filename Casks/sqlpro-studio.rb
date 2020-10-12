cask "sqlpro-studio" do
  version "2020.87"
  sha256 "ba6e203082dcd80396294bf742c855a9dff32d481ea9fda9a11ef8860b29ee4d"

  # d3fwkemdw8spx3.cloudfront.net/studio/ was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/studio/SQLProStudio.#{version}.app.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://www.sqlprostudio.com/download.php"
  name "SQLPro Studio"
  desc "Database management tool"
  homepage "https://www.sqlprostudio.com/"

  app "SQLPro Studio.app"

  zap trash: [
    "~/Library/Containers/com.hankinsoft.osx.sqlprostudio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlprostudio.sfl*",
  ]
end
