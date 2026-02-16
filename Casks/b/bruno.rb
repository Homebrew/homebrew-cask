cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "d9b2e2e33f02411ca65df89262f6af06cac187a6dc554e0646aae49b573a02fc",
         intel: "9de261f4b49024dfb4e43a4d8ac871bad2f957985f02b0a46bd692c495082029"

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
