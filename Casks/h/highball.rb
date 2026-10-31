cask "highball" do
  version "0.10.23"
  sha256 "07fe1049b4c0b8ffca3bd79dc94228653d667975059463edbe4e02815200f639"

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
