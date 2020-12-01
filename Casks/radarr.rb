cask "radarr" do
  version "3.0.0.4204"
  sha256 "eb9b9e95cc657d7fa904ea879613f1080524290009724b04ab24ce4afae16070"

  # github.com/Radarr/Radarr/ was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-x64.zip"
  appcast "https://github.com/Radarr/Radarr/releases.atom"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  depends_on formula: "mono"

  app "Radarr.app"

  preflight do
    set_permissions "#{staged_path}/Radarr.app", "0755"
  end
end
