cask "breitbandmessung" do
  version "2.0.4"
  sha256 "e2ed49a11dcd57cef794873e4bc7a3ba2cfb04de0896957daac91c11cb83bdce"

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
