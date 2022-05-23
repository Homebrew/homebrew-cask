cask "breitbandmessung" do
  version "3.2.1"
  sha256 "0193b0ab92683b6755499512c424a5268c6c3881e99da6b0ede8dbbd2b65236f"

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
