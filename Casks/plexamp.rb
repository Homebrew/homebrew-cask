cask "plexamp" do
  if Hardware::CPU.intel?
    version "3.8.2"
    sha256 "6fd7bcfd1ccce7249912bfa4d42947d703e02e827e4fc3eb6c199cd7e06da627"

    url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg",
        verified: "plexamp.plex.tv/"

    livecheck do
      url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
      strategy :electron_builder
    end
  else
    version "3.5.0"
    sha256 "ead85dd518814718ce57b47a2cf76d0f290a9fd6465c88369d33964a67dbb76d"

    url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}-arm64.dmg",
        verified: "plexamp.plex.tv/"

    livecheck do
      skip "No version information available"
    end
  end

  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  app "Plexamp.app"
end
