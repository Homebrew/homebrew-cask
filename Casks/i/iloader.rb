cask "iloader" do
  version "2.2.6"
  sha256 "8494c0221b5fd3efbe7100637ecbeaddfe1bb5bf29de90b01a8b9de4a580cf1e"

  url "https://github.com/nab138/iloader/releases/download/v#{version}/iloader-darwin-universal.dmg",
      verified: "github.com/nab138/iloader/"
  name "iloader"
  desc "iOS Sideloading Companion"
  homepage "https://iloader.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "iloader.app"

  zap trash: "~/Library/Application Support/me.nabdev.iloader"
end
