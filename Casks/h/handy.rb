cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.12"
  sha256 arm:   "d7acf62e4c8ca91100d0759d1b7fe5bc3d425352c2e2dfe68ca734166675622d",
         intel: "dc3628cf83405cb25cadcd1f091581f50603fdc7b7adbe2eb911a3a72196e0a1"

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
