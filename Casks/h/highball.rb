cask "highball" do
  version "0.10.22"
  sha256 "c67cd2815af89303e02086b469d7fea1e00f9c24e6cdae4b658395a2fb93e1ef"

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
