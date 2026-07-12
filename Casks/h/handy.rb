cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "83ba6db5b71a1cab98f902840e37acebb5887a9047a198c13fd079298dad0b04",
         intel: "516f9c8d19bf03c68503fcc1e8cdf248c12df3d4aabc9b1e1919097ae291e3bf"

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
