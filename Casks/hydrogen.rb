cask "hydrogen" do
  version "1.2.0"
  sha256 "ac8be6d94128a3737604c670ec21c37956f3d297d12fb930a615f5f9cf35f767"

  url "https://github.com/hydrogen-music/hydrogen/releases/download/#{version}/Hydrogen-#{version}.dmg",
      verified: "github.com/hydrogen-music/hydrogen/"
  name "Hydrogen"
  desc "Drum machine and sequencer"
  homepage "http://www.hydrogen-music.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Hydrogen.app"

  zap trash: "~/Library/Application Support/Hydrogen"
end
