cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.17"
  sha256 arm:   "f678bcda2d21918ddae3a40c66bf8f193d0bb58d01cb0a5bf352cda208fff101",
         intel: "c7b1d2589f1ff3efa7336857da80ec45efc8097ae4fa82384ebc338e0e627f4e"

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
