cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.20.2.9777"
  sha256 arm:   "d98cd9cb934ea401a01461f0ae8f9de3959c6fc74f8d1995a83ea652a1161684",
         intel: "b220f6bb705fef49c4d20441c6a778ffd5d775acce713b9a597974ce27c8fe0c"

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
