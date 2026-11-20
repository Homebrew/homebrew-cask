cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "1.0.9"
  sha256 arm:   "ef6a49abfcdc2b63105628a55d0e0df3d626fcfe60d9b299352e1890ae9e5afd",
         intel: "f3af8497056cfcade39038472b9fbab7ed377b81bf33b159adbed81836c3c5e5"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rowboat.app.sfl*",
    "~/Library/Application Support/Rowboat",
    "~/Library/Caches/com.rowboat.app*",
    "~/Library/HTTPStorages/com.rowboat.app",
    "~/Library/Preferences/com.rowboat.app.plist",
  ]
end
