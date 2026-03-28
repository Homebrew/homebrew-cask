cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.0"
  sha256 arm:   "2256c0e63c1a6924b56f43a7231fd632d588bf927934acc0b655e2aef92f9d78",
         intel: "efea408f9a807db252180dd7b9dcd24acfa8ce28ea8665d772c15f42eab5c8ee"

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
