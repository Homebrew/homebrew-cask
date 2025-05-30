cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "c4580636d81190b97d05db4bc6d588b289c674e32014d2b855f98feb7d260a60",
         intel: "4fdd593481ef32dd0e6f1678d1074586b28fa52707352e9686c664dc232a0f6e"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
