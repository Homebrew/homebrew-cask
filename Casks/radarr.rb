cask "radarr" do
  version "3.1.1.4954"
  sha256 "a336d213e93fc80d15b3a855e8466cfa19e71a85b3fef3e2236779500c22c492"

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
