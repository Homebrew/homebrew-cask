cask "endless-sky" do
  version "0.10.10"
  sha256 "5f5a61a0360d76e4e66f3e20e04b626f0cd2341804b741726a05ae6a8050c01d"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/Endless-Sky-v#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Endless Sky.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/endless-sky.sfl",
    "~/Library/Application Support/endless-sky",
    "~/Library/Saved Application State/Endless-Sky.savedState",
  ]
end
