cask "hydrogen" do
  version "1.2.7"
  sha256 "3c7427fadcb492da15786cb14f7b6b9728ebbc9fad7254eedffc0ffb85faf127"

  url "https://github.com/hydrogen-music/hydrogen/releases/download/#{version}/Hydrogen-#{version}.dmg"
  name "Hydrogen"
  desc "Drum machine and sequencer"
  homepage "http://www.hydrogen-music.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-10-02", because: :fails_gatekeeper_check

  depends_on :macos

  app "Hydrogen.app"

  zap trash: "~/Library/Application Support/Hydrogen"

  caveats do
    requires_rosetta
  end
end
