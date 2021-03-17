cask "knotes" do
  version "2.8.1"
  sha256 "689ea41584f4995b76955b6c74eb2e7f6ac47008a96c198d048e384832ab23bc"

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
