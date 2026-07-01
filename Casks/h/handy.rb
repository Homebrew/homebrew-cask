cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "aaede78053bda455994cab05d53ab49d9a980661c58383eebb7ffb3737b239b6",
         intel: "995fa6925d1df55d1715f71814f023e19d4f612ab9af499c0d48c8a13f742955"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  auto_updates true
  depends_on macos: :ventura

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
