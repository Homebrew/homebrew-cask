cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.19"
  sha256 arm:   "6fcd6cb15a3559f5223ff94d7a16711c521d2ea6c1a3be1bde4cd1438279fc92",
         intel: "7c9a3c71f27bc11023c9ed56d9c0f69894d2c7318688e6eda2808414ae3c7d2e"

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

  uninstall quit: "com.drhelius.Gearboy"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearboy.savedState"
end
