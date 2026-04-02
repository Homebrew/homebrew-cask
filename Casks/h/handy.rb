cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "5eb376481d777994e49de9cb644a077ccf32e3ebffeb3502adf56c907f6d8295",
         intel: "c316a5f619e87e66313cf178a9e452054b6da756de0d0e04f88c45cf659ad13e"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
