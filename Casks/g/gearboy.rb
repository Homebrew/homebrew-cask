cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.12"
  sha256 arm:   "5d596c64e354427fe11e5c74d8900fbe843b8fecc00829d7797476a5188361be",
         intel: "61b81cafb2a4cf5f9c58e6c54d49a2d6b748bf03b5d78a8a783a458dc395abc3"

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
