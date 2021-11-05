cask "plexamp" do
  if Hardware::CPU.intel?
    version "3.8.0"
    sha256 "f67172a479d68b92cfe131175f701ebcbbcd1717c0b1ad9949804f35ace903d0"

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
