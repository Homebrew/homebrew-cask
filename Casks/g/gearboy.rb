cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.1"
  sha256 arm:   "8afc57a32f1fc3144e8156e145f7c1b601cc364b44d2f58662d90491150c1b9c",
         intel: "6bef9770ab5901274e964db03f412dc0aecb5a33af00dbb21eca08b3eefa8a05"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-desktop-macos-#{arch}.zip"
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
