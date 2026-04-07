cask "iloader" do
  version "2.2.2"
  sha256 "3557d74942a0df6a6ee2d2e71b8132d9174c34f01c37dfad9423078e46a8c08e"

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

  app "iloader.app"

  zap trash: "~/Library/Application Support/me.nabdev.iloader"
end
