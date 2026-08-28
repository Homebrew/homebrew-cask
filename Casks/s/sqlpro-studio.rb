cask "sqlpro-studio" do
  version "2026.238"
  sha256 "59f808e0ce1943d8720dea2aaa43d40b9a7989b910b984ce2b85dcc11337db27"

  on_sequoia :or_older do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  url "https://d3fwkemdw8spx3.cloudfront.net/studio/SQLProStudio.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/studio/"
  name "SQLPro Studio"
  desc "Database management tool"
  homepage "https://www.sqlprostudio.com/"

  livecheck do
    url "https://www.sqlprostudio.com/download.php"
    strategy :header_match
  end

  depends_on macos: :sonoma

  app "SQLPro Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlprostudio.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.sqlprostudio",
  ]
end
