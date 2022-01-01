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
    version "3.9.0"
    sha256 "765ae9021dd7a2e4129bf48c5f26517e9dea8e1a93941bfc36e81544fa71136a"

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
