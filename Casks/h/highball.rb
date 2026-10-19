cask "highball" do
  version "0.10.21"
  sha256 "380b8e51aea3c642d9d3b1770270f30d805b0399a3e561ac7d0c41e84aa3c57e"

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
