cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.13"
  sha256 arm:   "aaf675b85cee385e4247dfefef91996b171793db785b2a5b6664c4d722aeebc1",
         intel: "97a4902e4812357048d66cdebcbb1a3dc56ab974e5c2429cfc560ae064aeb2ec"

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
