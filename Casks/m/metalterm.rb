cask "metalterm" do
  version "0.2.1"
  sha256 "0a5cb7044b9da80858f9134400cddf9b0c0672c434ca57bd17784e338cfd146d"

  url "https://github.com/pioner92/metalterm-site/releases/download/v#{version}/Metalterm-#{version}.dmg"
  name "Metalterm"
  desc "GPU-accelerated terminal emulator"
  homepage "https://metalterm.dev/"

  livecheck do
    url "https://metalterm.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Metalterm.app"

  zap trash: [
    "~/Library/Application Support/dev.metalterm.Metalterm",
    "~/Library/Caches/dev.metalterm.Metalterm",
    "~/Library/HTTPStorages/dev.metalterm.Metalterm",
    "~/Library/Preferences/dev.metalterm.Metalterm.plist",
    "~/Library/Saved Application State/dev.metalterm.Metalterm.savedState",
  ]
end
