cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.12.0"
  sha256 arm:   "a30d112d8ef0b12626bd311b037f1d9417928441f9993bc06dfbde12bd119bc3",
         intel: "ded2fb031cc6508c78ccb63ef7ab70fd7b0abac95c1d2e6bfbb64941c3bc44f7"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
