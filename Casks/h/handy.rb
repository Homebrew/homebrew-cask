cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.7"
  sha256 arm:   "acdfcceccf06c57234463353b32e9599f29d73309ad8dbdbbbb28c031f349b62",
         intel: "461b3a2802ff678d1ad0cdf95c706ccfaf42ea45d6599893dc7aad147075fbbe"

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
