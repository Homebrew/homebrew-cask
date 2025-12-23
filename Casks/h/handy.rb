cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.9"
  sha256 arm:   "1e79e2059f6aed28529368edd147aaf755b7047da9fe6292c1bf97d25a3b55fc",
         intel: "989ca20ea89c36bba4663c9693ecf26c271993c9605c7eef0ef6b733371470f3"

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
