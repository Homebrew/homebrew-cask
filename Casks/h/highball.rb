cask "highball" do
  version "0.10.26"
  sha256 "c095af894484f6aba965ae95a11d00f97f2a360dbbc3b0ee22d0473a3318a7be"

  url "https://github.com/gauthierpiarrette/highball/releases/download/v#{version}/Highball.dmg"
  name "Highball"
  desc "Tool to run Windows games"
  homepage "https://github.com/gauthierpiarrette/highball"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Highball.app"

  zap trash: [
    "~/Library/Application Support/Highball",
    "~/Library/Caches/app.highball.Highball",
    "~/Library/HTTPStorages/app.highball.Highball",
    "~/Library/Preferences/app.highball.Highball.plist",
    "~/Library/WebKit/app.highball.Highball",
  ]
end
