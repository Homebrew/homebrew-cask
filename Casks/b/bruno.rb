cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "fa9854c834f42c22640177a0764eef75389bb23e5a5728ea18a50a85a43dc609",
         intel: "f574d946d0ec5bf24ebf5d2f59b6446e13d9fbbd96545fbb97006d6dd67400f3"

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
