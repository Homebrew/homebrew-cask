cask "macstroke" do
  version "3.0.1"
  sha256 "4315e9ebb7862892d649b38925d67c53ffb28cc2fd474e201aa462f9c4ca4cb8"

  url "https://github.com/mtjo/MacStroke/releases/download/#{version}/MacStroke.zip"
  name "MacStroke"
  desc "Configurable global mouse gestures"
  homepage "https://github.com/mtjo/MacStroke/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "MacStroke.app"

  uninstall quit: "net.mtjo.MacStroke"

  zap trash: [
    "~/Library/Application Scripts/net.mtjo.MacStroke.FinderSyncExtension",
    "~/Library/Application Support/MacStroke",
    "~/Library/Caches/MacStroke",
    "~/Library/Caches/net.mtjo.MacStroke",
    "~/Library/Containers/net.mtjo.MacStroke.FinderSyncExtension",
    "~/Library/Cookies/net.mtjo.MacStroke.binarycookies",
    "~/Library/Preferences/net.mtjo.MacStroke.plist",
  ]
end
