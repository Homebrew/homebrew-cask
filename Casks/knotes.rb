cask "knotes" do
  version "2.8.2"
  sha256 "ed64549e066a582e675f8dafb5fc2304d508040e3d05ceb2964188cdf75bba6a"

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
