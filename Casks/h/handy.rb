cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.8"
  sha256 arm:   "8a69f5dd210cfb20ece9fc0a9c76d9448590f89969c31032a8d72dbf7b644e67",
         intel: "121d550198b690e7e877400c2b32fe593877030e7631436f6c5a560db07d477d"

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
