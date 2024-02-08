cask "katana" do
  version "1.4.4"
  sha256 "905a578cd5d2fd3ee18e521ef0e1574f19229938181585bee41008b172dc5d1e"

  url "https://github.com/bluegill/katana/releases/download/v#{version}/katana-#{version}-mac.zip"
  name "Katana"
  desc "Open-source screenshot utility"
  homepage "https://github.com/bluegill/katana/"

  app "Katana.app"

  zap trash: [
    "~/.katana",
    "~/Library/Application Support/Katana",
    "~/Library/Logs/Katana",
    "~/Library/Preferences/com.electron.katana.plist",
  ]
end
