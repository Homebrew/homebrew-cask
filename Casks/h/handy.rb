cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "ee176380906cf2dec024417c1ca6e4b1f52535b98f41f198170bf363a2a053e3",
         intel: "db3618321ed6082502d1a7844482bc6059226b14bca91980d54c5cda5f3885ea"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}_darwin.dmg",
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
