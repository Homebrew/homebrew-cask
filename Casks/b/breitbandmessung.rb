cask "breitbandmessung" do
  version "3.7.0"
  sha256 "c2d620f2872a5bd4d8834d98b2efbbafd18a370d88aff1bfc18747259a835e76"

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
