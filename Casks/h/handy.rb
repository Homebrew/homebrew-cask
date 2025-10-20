cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.4"
  sha256 arm:   "a0f116683cb78d2e64a2c2e9918fd9918fdf3d9e714c9f6f2636637e3d4703b1",
         intel: "27a0098c966ca89d6a3c69fdb0df6c85ce57da14fbb9515d23f8a7e4a0072ee4"

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
