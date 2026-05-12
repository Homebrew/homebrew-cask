cask "sqlpro-studio" do
  version "2026.87"
  sha256 "5d7fb3b82837228cbec1361387f4e20eff8553defa169c6eef6d092b71e565b8"

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
