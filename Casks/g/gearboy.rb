cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.6"
  sha256 arm:   "e46a34f0f5ea8f59a761ed339548a798b05c87c59d528d41201dff6af7b36a20",
         intel: "73d2894cf37b9bf840d15b6168e33528f95f81fc2013d4fb175a62909ee01fa4"

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
