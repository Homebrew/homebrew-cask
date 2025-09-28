cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "07e1a6978d4fac07b5afb1314fcf165ebfb7de6e4b0acf1f7700bb486948ea59",
         intel: "769256dbe58066782f0f968a8d140ab652b49fefac70d32a632bb164b5edc6d0"

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
