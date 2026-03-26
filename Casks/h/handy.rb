cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.1"
  sha256 arm:   "dbcb7f5ba51f29fd6313802dc204576ea26dba8788a297f249e228c0ecde34fb",
         intel: "45a3df8e179aaf3c67a33862dc10444bd37c7b5a8c95bad0663a855f311d6f2c"

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
