cask "plexamp" do
  version "3.5.0"

  if Hardware::CPU.intel?
    sha256 "6eff736103de0ed89d81600f82e541deecc5f8d76d878320b41ad87ffe4bd87d"
    url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}.dmg",
        verified: "plexamp.plex.tv/"
  else
    sha256 "ead85dd518814718ce57b47a2cf76d0f290a9fd6465c88369d33964a67dbb76d"
    url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}-arm64.dmg",
        verified: "plexamp.plex.tv/"
  end

  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  livecheck do
    url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  app "Plexamp.app"
end
