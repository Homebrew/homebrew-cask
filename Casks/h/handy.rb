cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "21e26a7d4f479607945eb0c44f1b755d60cdfc89080487b215d6fcb0db14a4df",
         intel: "32f04cd565948af3de72c60a21550346f618c5011d5bef03b9b509d15cc11017"

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
