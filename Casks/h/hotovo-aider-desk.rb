cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.59.0"
  sha256 arm:   "d7a0cebc4a7771454a453a73daf2707fab4ca75f9b02af884f15ba822c60ac47",
         intel: "f8633a523af35735ca9e2e0139304ad7f1bdb25bcb5f3395e135ced0e0293ba7"

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
