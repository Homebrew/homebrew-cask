cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.47"
  sha256 arm:   "14cf979ee89e1e120ccf1b4d3dc3c67dd9029b5e48e6db607c211ae556a858a5",
         intel: "02728d4fd5cefdcc05430514b0573a9fc355fc1aa494d5cd2e19a5afad2fbb39"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
