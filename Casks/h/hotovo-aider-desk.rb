cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.55.0"
  sha256 arm:   "0cebebac8110f35f929a8b8cce306ef20fb484bc2e480649f88e5083b03bfc3d",
         intel: "44d845373fc256384b9fb7f893d3998a79b6858a0cdea61b726094ab7b909811"

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
