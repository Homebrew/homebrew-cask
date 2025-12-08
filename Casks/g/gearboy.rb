cask "gearboy" do
  arch arm: "arm", intel: "intel"

  version "3.7.5"
  sha256 arm:   "465279d3b8c91e04b8e96898ee801024b241d8614bb2485729d0feccc3d481c2",
         intel: "c54bc9686494838ed666b1d50a8793675551eb02a59c3bcecbbf514a9a0aa1c1"

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
