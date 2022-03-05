cask "radarr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.0.4.5922"

  if Hardware::CPU.intel?
    sha256 "eb8fd9912ecafd013c3a5632d9ff9a7617fec8213e76cadec9a4cabadb61d141"
  else
    sha256 "70378b2032706e3422e893dfd2f015dfbc40e5f331cea77c298e31acd5b13754"
  end

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-#{arch}.zip",
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
