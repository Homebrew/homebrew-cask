cask "fman" do
  version "1.7.3"
  sha256 "27e9aa2ffae66f448a45c025a1fb1b9e06903aab5d2f117b951612deeee09531"

  url "https://fman.io/updates/mac/#{version}.zip"
  name "fman"
  desc "Dual-pane file manager"
  homepage "https://fman.io/"

  livecheck do
    url "https://fman.io/updates/Appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "fman.app"

  zap trash: "~/Library/Application Support/fman"

  caveats do
    requires_rosetta
  end
end
