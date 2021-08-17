cask "radarr" do
  version "3.2.2.5080"
  sha256 "e71a778f9fd0d0a6768d4f01ec7dd1fbdd9b48f79b1c2343bfdc1aa14505a313"

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
