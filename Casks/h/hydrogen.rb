cask "hydrogen" do
  version "1.2.6"
  sha256 "05ba60a4c71745c591b22f472b80c79fdcdd0ef38bb3ef0b08b313d722e76811"

  url "https://github.com/hydrogen-music/hydrogen/releases/download/#{version}/Hydrogen-#{version}.dmg",
      verified: "github.com/hydrogen-music/hydrogen/"
  name "Hydrogen"
  desc "Drum machine and sequencer"
  homepage "http://www.hydrogen-music.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Hydrogen.app"

  zap trash: "~/Library/Application Support/Hydrogen"

  caveats do
    requires_rosetta
  end
end
