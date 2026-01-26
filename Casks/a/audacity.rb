cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.7"
  sha256 arm:   "8b3c43a06eef2977bd81fd14f349d93c6295f1760a93fc5bd4dba86c0ec104eb",
         intel: "8c9bf8bdca75ffb1d6cfe5c28b04869ec1150c65f246983e70d901847e94d4b9"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
