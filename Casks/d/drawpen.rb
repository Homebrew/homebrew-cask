cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.51"
  sha256 arm:   "93cd87311fa4dc0d11261a4d2bd97a4f32e5b3a1b224201debe6d19a0c7f4b26",
         intel: "2454f8dbe8cce3b1479783d47f270afbf280b15015ce1da2886fbc3c691d9fb2"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
