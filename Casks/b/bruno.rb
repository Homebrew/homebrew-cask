cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "d57331cc367889d756f63f6bcb84cb69dc1fb7f85e4d4a84b1e6115efc1d04ad",
         intel: "712ef43add2a54fde0eb55f94e2060d0751896cb3f2d738e7e1d2752ae85e8c7"

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
