cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.133.2"

  if Hardware::CPU.intel?
    sha256 "9b0dc5822364d1840b46cbe17f6fdbda4ce672ff4923c7fe3ce36805795b9b08"
  else
    sha256 "14c994de204f4d793a5121d19db3901830e7a019e9bf5abe5cf5e9f05ed392c0"
  end

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
