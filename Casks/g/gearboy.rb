cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.4"
  sha256 arm:   "5372e35589aabc7db3d4d8d11b6f31f3f10dacf1bc4353712a1cce6af7b41cf3",
         intel: "7320edd64fd8dcea044fe49e96bd9a386cf5981b954b6c065d641f7fba8f5e7b"

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
