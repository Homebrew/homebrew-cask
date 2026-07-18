cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.10"
  sha256 arm:   "2d0075701e71019b1fb0b17d7f8765caa6727ea3ff7a04f219909fae0eb2d7dc",
         intel: "29f80eb6e3f410b82f876cfb7c606c1d11d5e2c767f60d2eb1ca468b5b93bf9b"

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
