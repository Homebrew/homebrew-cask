cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "ab16888da9e2edd8f8bfef3b923b0d9575d7c26b9aa0228c47e9c1f7914c25d8",
         intel: "c1655b0c4eee1045d64cb7bfd1a1bd4ddb8ad82961729dc5ccac1da95ddaa7f5"

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
