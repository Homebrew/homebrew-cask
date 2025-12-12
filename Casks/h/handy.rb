cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.7"
  sha256 arm:   "c54c1ad8782ba15cd2b1801ae33e9bc860e43b3f531df911a1cb3e10025fc19b",
         intel: "1e271d5aa92ea93027f1deae772ecbf5140662615ffa366a8f95336431ba5dcd"

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
