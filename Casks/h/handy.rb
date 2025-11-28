cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.3"
  sha256 arm:   "0df0d3f8ddd39818aa28a604a02439ba5b798967b8a4d70a0c2672e6c5238e74",
         intel: "5270cfdd1444a3faa2f91381a581c8137af82644e4edf92b370a67a8437e838b"

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
