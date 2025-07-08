cask "gearboy" do
  arch arm: "arm", intel: "intel"

  version "3.7.1"
  sha256 arm:   "9679060fa5d8efde35dbc29c651d3870f1192f38f80fab427570aef47e909a07",
         intel: "0d09eb9005ebf74736563b14c57544d298f9d2a01619969befcf5b7d486dd5e2"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-macos-#{arch}.zip"
  name "Gearboy"
  desc "Game Boy and Game Boy Color emulator"
  homepage "https://github.com/drhelius/Gearboy"

  livecheck do
    url :url
    strategy :github_latest
  end

  container nested: "Gearboy.app.zip"

  app "Gearboy.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearboy.savedState"
end
