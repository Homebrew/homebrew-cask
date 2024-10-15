cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.33.1"
  sha256 arm:   "e63c23d15593bdb658228c2809e80b3cb9b6df192d1322d16e24f4b2a5676c45",
         intel: "7bfb2f34dcb93d69f1f9de219b373455389907d10cdcb6201234fae8278487de"

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
