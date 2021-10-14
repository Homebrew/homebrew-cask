cask "plexamp" do
  if Hardware::CPU.intel?
    version "3.7.1"
    sha256 "2c906f70564c01cfd10b10f7433e31d4f6637c57416860c39d0f84a1264f77b3"

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
