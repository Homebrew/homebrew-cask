cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.11"
  sha256 arm:   "7a50b6840802a34ebd8bad2056ee8d3f3dc9fda8938530926aa2fcbd3e6260d7",
         intel: "e29dcff088ca65c7a202fba9bc7962d974929bb1b2a68757c1045388f0e33914"

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
