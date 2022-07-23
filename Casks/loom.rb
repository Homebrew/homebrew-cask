cask "loom" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.138.0"

  if Hardware::CPU.intel?
    sha256 "0e70b6e10ec2d67cd70c92588dd918bcb4a591ce4acc9f119dee16afdb65cb56"
  else
    sha256 "e0f456d0daa94aff022434fee031f33993498754da0a60073962c2cdae172585"
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
