cask "loom" do
  arch arm: "-arm64"

  version "0.291.3"
  sha256 arm:   "b69f4a0b4dedd88b39446e196c66f626f8507b65ca54ed90c85fca85f7a4e1be",
         intel: "04ba698b4b94cf0b1e19e233f393926fc6f17d046891060397ddda28f0aa9595"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
