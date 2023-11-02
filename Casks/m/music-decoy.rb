cask "music-decoy" do
  version "1.0"
  sha256 "e4fa4670e24522ac5e0999ed6c483201d257e858fc644d3490edee6887b847eb"

  url "https://files.lowtechguys.com/MusicDecoy-#{version}.zip"
  name "Music Decoy"
  desc "Stop launching the Music app whenever you press Play"
  homepage "https://lowtechguys.com/musicdecoy"

  livecheck do
    url "https://lowtechguys.com/musicdecoy/"
    regex(%r{href="https://files.lowtechguys.com/MusicDecoy-(\d+\.\d+)\.zip"}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Music Decoy.app"
end
