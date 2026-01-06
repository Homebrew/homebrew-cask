cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.10"
  sha256 arm:   "9f91059d32d4cd9f4e8baf99608f9cefc6b4994cf697ea446fddccc5c229dca2",
         intel: "9f240ff6407db5210aa8f2be1ec338b9251d0a5d9d0c97558bdd1411cb1cdcb8"

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
