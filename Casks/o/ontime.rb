cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.0.2"
  sha256 arm:   "6c4a4c3b290366ccafbac8b40699a0ade33a6565e963794b670e555f16614d16",
         intel: "72f2c8e11791899aee952470f6395534a7f25a2360d396a99df64cdd14550615"

  url "https://github.com/cpvalente/ontime/releases/download/#{version}/ontime-macOS-#{arch}.dmg",
      verified: "github.com/cpvalente/ontime/"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
