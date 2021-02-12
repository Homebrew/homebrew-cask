cask "knotes" do
  version "2.7.1"
  sha256 "4ee5dbbfdfb6ef4f57444add10823add5c81140617d90a4603f322c953378410"

  url "https://knotes2.s3-ap-northeast-1.amazonaws.com/download/mac/Knotes-#{version}.dmg",
      verified: "knotes2.s3-ap-northeast-1.amazonaws.com/"
  name "Knotes"
  homepage "https://knotesapp.com/"

  livecheck do
    url "https://knotesapp.com/"
    strategy :page_match
    regex(%r{href=.*?/Knotes-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Knotes.app"

  zap trash: [
    "~/Library/Application Support/knotes",
    "~/Library/Logs/knotes",
    "~/Library/Preferences/com.knotesapp.knotes.helper.plist",
    "~/Library/Preferences/com.knotesapp.knotes.plist",
    "~/Library/Saved Application State/com.knotesapp.knotes.savedState",
  ]
end
