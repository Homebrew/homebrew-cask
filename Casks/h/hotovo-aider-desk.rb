cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.58.1"
  sha256 arm:   "f79a77f6da1b2b9ac4c9cb13b3f50cc2094f33740885c5579d865746c83b1531",
         intel: "4166fd7f61852c3e8a3c2ae1afb2d3f90b47ce9b8d152b000d500351604a81bc"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
