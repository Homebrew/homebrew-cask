cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "1cb03976e08651bf87ad37179832e93c6546f93b1005c9541324da7c9458b80e",
         intel: "64a626f9f451d82f8dddeb1c5b661f1936215a44d3cc805d227a4faa546405e3"

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
