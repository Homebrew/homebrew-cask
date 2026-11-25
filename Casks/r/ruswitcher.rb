cask "ruswitcher" do
  version "3.5.0"
  sha256 "913d57153e396854904063b8bd964d5eb38fcc56f8b6518772754002a6273124"

  url "https://github.com/rashn/RuSwitcher/releases/download/v#{version}/RuSwitcher-#{version}.dmg"
  name "RuSwitcher"
  desc "Keyboard layout switcher"
  homepage "https://github.com/rashn/RuSwitcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "RuSwitcher.app"

  zap trash: [
    "~/Library/Caches/com.ruswitcher.app",
    "~/Library/HTTPStorages/com.ruswitcher.app",
    "~/Library/Logs/RuSwitcher",
    "~/Library/Preferences/com.ruswitcher.app.plist",
  ]
end
