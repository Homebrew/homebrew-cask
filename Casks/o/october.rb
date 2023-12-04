cask "october" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0"
  sha256 arm:   "ad12fd61c789155e635f5ae1f5a8faf26405f4b6c19b12a01fbf4e653c274777",
         intel: "f8a707aaec4c4c74e5d5dba722346ffe9ad48db59af74adeb7d6da7bbe9b7855"

  url "https://github.com/marcus-crane/october/releases/download/v#{version}/october_#{version}_darwin_#{arch}.zip",
      verified: "github.com/marcus-crane/october/"
  name "October"
  desc "GUI for retrieving Kobo highlights and syncing them with Readwise"
  homepage "https://october.utf9k.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "October.app"

  zap trash: [
    "~/Library/Application Support/october",
  ]
end
