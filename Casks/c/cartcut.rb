cask "cartcut" do
  arch arm: "-arm64"

  version "0.5.5"
  sha256 arm:   "d9d12f7e30d9db6fb10990f2096c31232d368bd05da583fdb9e60dc377d87744",
         intel: "0a8248f6ae80ee9d249b96070582cc3789297b87f8f4ce016de463fc9b83f5ea"

  url "https://github.com/cartesiancs/cartcut/releases/download/v#{version}/Cartcut-#{version}#{arch}.dmg"
  name "Cartcut"
  desc "Video editor for AI agents"
  homepage "https://cartesiancs.com/cartcut"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Cartcut.app"

  zap trash: [
    "~/Library/Application Support/Cartcut",
    "~/Library/Caches/com.cartesiancs.cartcut",
    "~/Library/HTTPStorages/com.cartesiancs.cartcut",
    "~/Library/Logs/Cartcut",
    "~/Library/Preferences/com.cartesiancs.cartcut.plist",
    "~/Library/Saved Application State/com.cartesiancs.cartcut.savedState",
  ]
end
