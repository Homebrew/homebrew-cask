cask "iloader" do
  version "2.2.0"
  sha256 "056b64b6b4201c2c3e84a4d3db776c1721604b0d287cc3b91e5fa88eaf2abc26"

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
