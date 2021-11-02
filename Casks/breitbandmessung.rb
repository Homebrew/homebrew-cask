cask "breitbandmessung" do
  version "2.0.3"
  sha256 :no_check

  url "https://download.breitbandmessung.de/bbm/Breitbandmessung-mac.dmg"
  name "Breitbandmessung"
  desc "Official internet speed test from the german Bundesnetzagentur"
  homepage "https://www.breitbandmessung.de/"

  app "Breitbandmessung.app"

  zap trash: "~/Library/Application\ Support/Breitbandmessung"
end
