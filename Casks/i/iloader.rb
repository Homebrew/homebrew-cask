cask "iloader" do
  version "2.0.2"
  sha256 "d39a73b9d2b6232dde6b618c040106e0ecdb38d8ab290b848e26f3194d59a379"

  url "https://github.com/nab138/iloader/releases/download/v#{version}/iloader-darwin-universal.dmg",
      verified: "github.com/nab138/iloader/"
  name "iloader"
  desc "iOS Sideloading Companion"
  homepage "https://iloader.app/"

  app "iloader.app"

  zap trash: "~/Library/Application Support/me.nabdev.iloader"
end
