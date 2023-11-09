cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "fddd103749baf12d4976f728943d1c5f0858993d9e3b04be377f72d14f9a775a",
         intel: "48dd26f909c0ef66c62ea0e960b9bda434b7815c260272190d7c013e50263fe2"

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
