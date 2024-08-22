cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.26.1"
  sha256 arm:   "321009a60d438002c7fc940252f3c83169bb233d4987d70f0e4fa2ea63a5fe82",
         intel: "780f1e3732cf65cb1d9275fc73cd8c2fce9f0b6e6945b777a380e2a09e27b991"

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
