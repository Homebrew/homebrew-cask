cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "ec6f93c5f86a49cb1c1964de4b6395116bb35b853efdaefc67663836f3bade42",
         intel: "e021873a8c8686f5f1eb3f46003f7eba8a3757212e51afd5eac29825f6979963"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
