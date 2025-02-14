cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.39.0"
  sha256 arm:   "e914dce3085193905404167639d2b4435f7d45c3074ae63c7b67e48d45ee11eb",
         intel: "016a24cc5029f4c3a75f465156dbd66df720f728023f588ff2918a78fc69b6bf"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
