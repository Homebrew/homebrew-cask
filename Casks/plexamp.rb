cask "plexamp" do
  if Hardware::CPU.intel?
    version "3.9.0"
    sha256 "a40e58af21255fc9b9c1a2363165ee2f0fb7708e68ca88c2e14d1124f78dc41b"

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
