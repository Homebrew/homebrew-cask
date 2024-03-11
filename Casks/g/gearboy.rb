cask "gearboy" do
  arch arm: "arm", intel: "intel"

  version "3.5.0"
  sha256 arm:   "fd1a592afc7847c41ad933ae7a39656ad84d45042521e27f7ac62fa5347335f3",
         intel: "317678aa721fc6747a07bb255ea5497aa2a47761f0ddc6d4f44ff45aa88429dd"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-macos-#{arch}.zip"
  name "Gearboy"
  homepage "https://github.com/drhelius/Gearboy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Gearboy.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearboy.savedState"
end
