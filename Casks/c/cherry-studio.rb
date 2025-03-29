cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.1.14"
  sha256 arm:   "97aec0b68e9633d16d6486d1a77905596b31d9321f319fc694fc7c9d2ea1d98a",
         intel: "800b612c8b0e989d26cba185cfd5c1132ab689707e1a655f837a0706aef377e0"

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
