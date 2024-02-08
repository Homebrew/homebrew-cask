cask "knotes" do
  version "2.11.2"
  sha256 "c78d19930c904ce19313c4ca981aa1141c9a7264a23fc3eb49aa7d3a5cb4e4b1"

  url "https://knotes2.s3-ap-northeast-1.amazonaws.com/download/mac/Knotes-#{version}.dmg",
      verified: "knotes2.s3-ap-northeast-1.amazonaws.com/"
  name "Knotes"
  desc "Reading notes management tool"
  homepage "https://knotesapp.com/"

  deprecate! date: "2024-01-05", because: :unmaintained

  app "Knotes.app"

  zap trash: [
    "~/Library/Application Support/knotes",
    "~/Library/Logs/knotes",
    "~/Library/Preferences/com.knotesapp.knotes.helper.plist",
    "~/Library/Preferences/com.knotesapp.knotes.plist",
    "~/Library/Saved Application State/com.knotesapp.knotes.savedState",
  ]
end
