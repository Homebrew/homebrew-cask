cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.3.9"
  sha256 arm:   "aabaa6e5e9213b45285771a2070f8e95df4e0a4b40496285dac7eb08c92a9ba5",
         intel: "d652ce2d25b5427cc0b583ad756cb2096a6abc51afdf84e8e158f0709765dbab"

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
