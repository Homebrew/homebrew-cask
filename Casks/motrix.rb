cask "motrix" do
  version "1.6.8"
  sha256 "6e7790a97c5c09ac3285ca90238a59276fd6d6b29d2d60ceaf8ad83ef23ef6d9"

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}.dmg",
      verified: "github.com/"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  app "Motrix.app"

  zap trash: [
    "~/Library/Application Support/Motrix",
    "~/Library/Preferences/net.agalwood.Motrix.plist",
    "~/Library/Saved Application State/net.agalwood.Motrix.savedState",
    "~/Library/Logs/Motrix",
    "~/Library/Caches/net.agalwood.Motrix",
  ]
end
