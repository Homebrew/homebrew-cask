cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.29.0"
  sha256 arm:   "8d0b3eaa17927ddabb2ecd96a78580cfb3bd19ad3041f61a7cda288a9022f01b",
         intel: "2b4cb82e63439e0286687097a23b0a0d52ea608b2575a4f5bba070fc25f3c87e"

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
