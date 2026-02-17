cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.6"
  sha256 arm:   "8fd1f9141b06174958375d43379c691d1a27c74de2500caf3ddfe7cc7293f0c3",
         intel: "90b631496c3bba5e548daf56034bcce8096a17208977550db7fa23c110e90cf4"

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
