cask "flameshot" do
  arch arm: "arm64", intel: "intel"

  version "13.0.1"
  sha256 arm:   "64f339b03f24b5a88eba8342ad6b888462d4f782940e0fb9be50bc0a3805189b",
         intel: "24cf88770ad695f7f022b08c063b30b20cd0d378490b40b753404c48ebd2b626"

  url "https://github.com/flameshot-org/flameshot/releases/download/v#{version}/Flameshot-#{version}-artifact-macos-#{arch}.dmg",
      verified: "github.com/flameshot-org/flameshot/"
  name "Flameshot"
  desc "Screenshot software with built-in annotation tools"
  homepage "https://flameshot.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :catalina"

  app "flameshot.app"

  uninstall quit: "org.flameshot.flameshot"

  zap trash: "~/.config/flameshot/flameshot.ini"
end
