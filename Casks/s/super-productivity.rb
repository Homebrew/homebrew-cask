cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.7.3"
  sha256 arm:   "6685bcac6675deec824ebc9e0a39e5596c7cec056b4c228ee8e5016688c16a0e",
         intel: "64bddbb24f2a0c0ca028582400240ae8a2f617373b822dd56461aca165ac89b2"

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
