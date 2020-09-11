cask "sqlpro-studio" do
  version "2020.72"
  sha256 "d84368a20408c48952cb6c92f8175dcc41a66cbd067a84b50f96b38e89f9afe4"

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
