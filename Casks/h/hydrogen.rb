cask "hydrogen" do
  version "1.2.5"
  sha256 "556759b691e5590d3803ba5c052a97102fd96a553d9f8a14d1e720f2e327dc80"

  url "https://github.com/hydrogen-music/hydrogen/releases/download/#{version}/Hydrogen-#{version}.dmg",
      verified: "github.com/hydrogen-music/hydrogen/"
  name "Hydrogen"
  desc "Drum machine and sequencer"
  homepage "http://www.hydrogen-music.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :mojave"

  app "Hydrogen.app"

  zap trash: "~/Library/Application Support/Hydrogen"

  caveats do
    requires_rosetta
  end
end
