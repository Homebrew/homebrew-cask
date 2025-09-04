cask "breitbandmessung" do
  version "3.10.0"
  sha256 "b1d04e723738ab72d42b00b3fa01e2b0cb60e1a1f5236d51ebfe53e4867f6a1f"

  url "https://download.breitbandmessung.de/bbm/Breitbandmessung-#{version}-mac.dmg"
  name "Breitbandmessung"
  desc "Official internet speed test from the German Bundesnetzagentur"
  homepage "https://www.breitbandmessung.de/"

  livecheck do
    url "https://download.breitbandmessung.de/bbm/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Breitbandmessung.app"

  zap trash: "~/Library/Application Support/Breitbandmessung"
end
