cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "17.0.5"
  sha256 arm:   "f41f41fad32447a6f017d44849d5704242e0344a4b55ac9601bcd6c97a907e46",
         intel: "fc56c56136bfaaa1e229e5c99db62780ba424bf78af85385d899e5c39d245550"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
