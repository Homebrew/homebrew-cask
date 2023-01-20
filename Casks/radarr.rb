cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "4.3.2.6857"
  sha256 arm:   "cf022f9db86cfeb64ab0ddfb96d72143f04f6bce994670b0d1cc0721c1a79bdf",
         intel: "ee4c5c3d2055e812da304ce6afe08ec9c34424279357262bdaab0c67fdafcc26"

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Radarr/Radarr/"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Radarr.app"

  zap trash: "~/.config/Radarr"
end
