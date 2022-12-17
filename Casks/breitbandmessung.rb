cask "breitbandmessung" do
  version "3.3.0"
  sha256 "6b6ed1fcdd778b8a94db39d32b3f8b1b149d812cc9d0ccc81de88f1f245deb99"

  url "https://download.breitbandmessung.de/bbm/Breitbandmessung-#{version}-mac.dmg"
  name "Breitbandmessung"
  desc "Official internet speed test from the German Bundesnetzagentur"
  homepage "https://www.breitbandmessung.de/"

  livecheck do
    url "https://download.breitbandmessung.de/bbm/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :sierra"

  app "Breitbandmessung.app"

  zap trash: "~/Library/Application Support/Breitbandmessung"
end
