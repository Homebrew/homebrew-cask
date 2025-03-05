cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "0ee73fc1b7b0a4650d4cbe756ba7c04f8bf0edeb74b4e7168d9ff3a443a07a11",
         intel: "99a3b0e342fe7b6adfd8802ec2aaeb825b8f29571bcb7bf58a25c216a730c7f2"

  url "https://github.com/CherryHQ/cherry-studio/releases/download/v#{version}/Cherry-Studio-#{version}-#{arch}.zip",
      verified: "github.com/CherryHQ/cherry-studio/"
  name "Cherry Studio"
  desc "Desktop client that supports multiple LLM providers"
  homepage "https://cherry-ai.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Cherry Studio.app"
  binary "#{appdir}/Cherry Studio.app/Contents/MacOS/Cherry Studio", target: "cherry-studio"

  zap trash: [
    "~/Library/Application Support/CherryStudio",
    "~/Library/Caches/cherrystudio-updater",
    "~/Library/HTTPStorages/com.kangfenmao.CherryStudio",
    "~/Library/Logs/CherryStudio",
    "~/Library/Preferences/com.kangfenmao.CherryStudio.plist",
    "~/Library/Saved Application State/com.kangfenmao.CherryStudio.savedState",
  ]
end
