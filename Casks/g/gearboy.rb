cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.16"
  sha256 arm:   "a459875d6ed115244efdd75416b70275616785abc577ce949e4817643c8ffc91",
         intel: "f543a18e55c8339eb471bba77d0b05a7359b159a54445c4fd9374a0d79cfd751"

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
