cask "knotes" do
  version "2.10.0"
  sha256 "4ecb335996b73a1ad905c453a4c311a2e288df391ece9614b7c840d41c6096c2"

  url "https://knotes2.s3-ap-northeast-1.amazonaws.com/download/mac/Knotes-#{version}.dmg",
      verified: "knotes2.s3-ap-northeast-1.amazonaws.com/"
  name "Knotes"
  desc "Reading notes management tool"
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
