cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.6"
  sha256 arm:   "58f1c44700ed95ceb83fece25c9dbb4848464cdcd6941e415336dbb4cbcd9ec8",
         intel: "054ede07c8d0fa8af1d6a5fa3ce1a4009eb94be931394722a328c1d880de1288"

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
