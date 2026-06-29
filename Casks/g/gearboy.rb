cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.9"
  sha256 arm:   "8915764f353e3c9cacefa357a76f633795ed5aef20248afff00cd7c20ff79e18",
         intel: "d55d3f01dd90417f81db4ff0e4dce33d3d10f97b0613c47d7fe7f030917b484a"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-desktop-macos-#{arch}.zip"
  name "Gearboy"
  desc "Game Boy and Game Boy Color emulator"
  homepage "https://github.com/drhelius/Gearboy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  container nested: "Gearboy.app.zip"

  app "Gearboy.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearboy.savedState"
end
