cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.34.0"
  sha256 arm:   "81954d82cc99872903c4abe3405817a0de675cf63c08986b9a4157c86ff81dbc",
         intel: "be11e3be684e11b9215eb14bb604a6ab9ac9b8e69dcc0ef0d407741ee4d87644"

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
