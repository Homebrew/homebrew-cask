cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.14"
  sha256 arm:   "e8ec86b5839b0a56fb6fd8b65068fcb11d7fec026181c4f0d0544248f4ee6928",
         intel: "915045b3ba1c1d4a1087017cd55f4620298d0acf753b1eea4d7ea7c72d8158e2"

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
