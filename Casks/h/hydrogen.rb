cask "hydrogen" do
  version "1.2.3"
  sha256 "a93321a565ecc8f629532a8309e59b2bc7efc15167fd8ee088a60cfb42433dd5"

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

  caveats do
    requires_rosetta
  end
end
