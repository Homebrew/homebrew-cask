cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "2feee73bd946748b23fe00064955b1323745a8ef2fc0c4db4e9dbf8755931db3",
         intel: "0471f52efa9d2acdf314c19422e4adb4c67437045a9d007765b12e3ab469035c"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
