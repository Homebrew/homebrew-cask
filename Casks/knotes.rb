cask "knotes" do
  version "2.9.1"
  sha256 "7fd5e32fb294bcb1d92306b132cafb7dbb4f19e7799d3e33d190de0dd04d4786"

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
