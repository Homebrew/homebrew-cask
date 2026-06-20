cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.7"
  sha256 arm:   "e442d1574826d3bfda6aa39ffa8cfc86092ad483e0839aa899104237a70b201f",
         intel: "c9a65ba272de15fa6864c374da6ab5625549521f7db30dfa778ce03bf7c4cbd8"

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
