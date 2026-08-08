cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.5"
  sha256 arm:   "3bc52ee4a5010f9a3c50e3519d6510c4aa620bd6b98caa3022ebd3d6372690bc",
         intel: "d58ee765a1b9e3e99953ba338b89c7d898bbe45bfa7cd9b18e72e36049ce5e4e"

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
