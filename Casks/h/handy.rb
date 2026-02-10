cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "cb81f27b2667990b62c441033978669ab88338431056a8b6da33f63baa67efb3",
         intel: "4be689177bb8f3a0fe7ea009913301c372bef3b8e5f3c8346cf50203b24b5316"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  depends_on macos: ">= :ventura"

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
