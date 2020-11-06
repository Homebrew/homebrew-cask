cask "radarr" do
  version "0.2.0.1504"
  sha256 "c85738b7a6a087a1670801eef391f8ab31b326e2003fc01c5cd21372eed88c75"

  # github.com/Radarr/Radarr/ was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
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
