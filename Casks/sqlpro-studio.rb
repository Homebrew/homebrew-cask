cask "sqlpro-studio" do
  version "2023.10"
  sha256 "a1052bedf01f0718fcf13427a0e3a68ffba1b7080932851f5300b9ff97f133d5"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlprostudio.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.sqlprostudio",
  ]
end
