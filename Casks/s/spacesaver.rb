cask "spacesaver" do
  version "1.0.14"
  sha256 "9abe68b52052c8b90460985cec95edfe0c4a689a2c6e09f58d4eee1ae6f59235"

  url "https://github.com/tranhuycong/space-saver/releases/download/v#{version}/SpaceSaver-Installer.dmg",
    verified: "github.com/tranhuycong/space-saver/"
  name "SpaceSaver"
  desc "SpaceSaver is a macOS application designed to help you manage and optimize your workspace. It leverages macOS accessibility features to provide a seamless experience"
  homepage "https://spacesaver.congdev.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "SpaceSaver.app"

  zap trash: [
    "~/Library/Preferences/com.congth504.spacesaver.plist",
    "~/Library/Caches/com.congth504.spacesaver",
    "~/Library/HTTPStorages/com.congth504.spacesaver",
  ]
end
