cask "motrix" do
  arch arm: "-arm64"

  version "1.8.12"
  sha256 arm:   "7ff9938cb912bdefec3387a91893741ed78e9029e7f34afd7969b183e7456f89",
         intel: "935f8641f8f22b9aff6056c5f2bbbd591413ce6cb92109a0f96b8601e1104575"

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}#{arch}.dmg",
      verified: "github.com/agalwood/Motrix/"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  app "Motrix.app"

  zap trash: [
    "~/Library/Application Support/Motrix",
    "~/Library/Caches/net.agalwood.Motrix",
    "~/Library/Logs/Motrix",
    "~/Library/Preferences/net.agalwood.Motrix.plist",
    "~/Library/Saved Application State/net.agalwood.Motrix.savedState",
  ]
end
