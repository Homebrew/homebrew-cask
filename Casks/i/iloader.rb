cask "iloader" do
  version "2.2.1"
  sha256 "0cd312d8ef30ee39bd1c797a2f9d365a21715358fd3dd401be7b16f579a8a68a"

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
