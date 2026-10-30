cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.20"
  sha256 arm:   "193c053bca827c6d13eab5d7b5ab1c2d9c7d4ae5f397b71b06fec9a01087a752",
         intel: "a4f14672d1be31f6333ec4a24af79b1be5360a1e9774cca7e401ea5ed85ccd21"

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
