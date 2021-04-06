cask "hydrogen" do
  version "2020-12-20"
  sha256 "9934b24741fe3d7eed7eb1e2272626157aca72217ce76f03cb5bd015b6e14d2b"

  url "https://downloads.sourceforge.net/hydrogen/Hydrogen-#{version}.dmg",
      verified: "downloads.sourceforge.net/hydrogen/"
  name "Hydrogen"
  desc "Software synthesizer"
  homepage "http://www.hydrogen-music.org/"

  depends_on macos: ">= :sierra"

  app "hydrogen.app"

  zap trash: "~/Library/Application Support/Hydrogen"
end
