cask "gearboy" do
  arch arm: "arm", intel: "intel"

  version "3.6.0"
  sha256 arm:   "dc62746c1bfe40eb577b0322737ac05408f6679f31dcb8b565015bf164ec83db",
         intel: "952a41af3d823e9e261d2a4dccc11874b4f6ee9833e0cf7edc55896bbdaf4c7b"

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
