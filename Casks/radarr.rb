cask "radarr" do
  version "3.0.1.4259"
  sha256 "fe54a06eb7ad52facd0f449d76c1c7fdc8d8ca4433ed1916af80091508bdbefb"

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-x64.zip",
      verified: "github.com/Radarr/Radarr/"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Radarr.app"

  preflight do
    set_permissions "#{staged_path}/Radarr.app", "0755"
  end
end
