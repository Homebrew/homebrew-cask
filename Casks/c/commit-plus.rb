cask "commit-plus" do
  version "1.1.18"
  sha256 "1383da5edd2bf353c0eef691fd7d60faab721e26ad2935f289c7d59a80c98848"

  url "https://github.com/Commit-Plus/commit-plus/releases/download/v#{version}/Commit%2B-#{version}-arm64.dmg"
  name "Commit+"
  desc "Native Git client built with Swift and SwiftUI"
  homepage "https://commitplus.app/"

  depends_on macos: :tahoe

  app "Commit+.app"

  zap trash: [
    "~/Library/Application Support/Commit+",
    "~/Library/Caches/dev.thanhtran.macgit",
    "~/Library/HTTPStorages/dev.thanhtran.macgit",
    "~/Library/Preferences/dev.thanhtran.macgit.plist",
  ]
end
