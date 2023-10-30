cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "fb5125b42f93ccd306d5b0b584812e2d01fe2f44a7f04af720704068c71360b0",
         intel: "2d1931a2620f9f8e6b498fa6af35956b9df8b09cdca9f6192d4c148f4171b7f9"

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
