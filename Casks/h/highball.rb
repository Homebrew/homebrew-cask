cask "highball" do
  version "0.10.15"
  sha256 "f9ad47946366b16cef981127b6141d08ebe19abc3d3fa9cd8c65d1072a46b8a6"

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
