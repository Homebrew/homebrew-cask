cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "ee20889ab29bc05988e06363bcc9c77f26a1743c5db52b61ccab23b3b52ef534",
         intel: "b04b5d89d33887777711586e0aa61640ff8bfa98335871d993feb12c1957cb9a"

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.dmg",
      verified: "github.com/kando-menu/kando"
  name "Kando"
  desc "The Cross-Platform Pie Menu"
  homepage "https://github.com/kando-menu/kando"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kando.app"

  zap trash: [
    "~/Library/Application Support/Kando",
    "~/Library/Preferences/com.electron.kando.plist",
  ]
end
