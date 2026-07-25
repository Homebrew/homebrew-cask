cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.4"
  sha256 arm:   "2e8ff1eb2a56e52a29556aee2e74a389be3eb6ecdb45fa987eb0fcc4fe2321a0",
         intel: "1528aa45f357374052923087e1251c911889b420e0e4cbfb41f23d92c8b9e2f3"

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
