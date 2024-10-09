cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.33.0"
  sha256 arm:   "624a804a5cf1fada49dc3a2ba44927b2b43cbc2cea241480dcbdfe8d2cad59de",
         intel: "43c48c7d37471b71a71eb7b1ebc6f429059ecd52cc20c0a837ae13abe336caa6"

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
