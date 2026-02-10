cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "7d0a6fd3efff9c4e00ff6b45733749bcf63d3ed3f45248c856d5b5898877dd14",
         intel: "136bf14b9bbd7f7833d0f768a40177cd5a026b4bba2429741f6d9be46db76d7d"

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
