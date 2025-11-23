cask "hydrus-network" do
  version "636"
  sha256 "08d9ba060c090f513d66ff89da50767260726327fdfbc3d7a70ad8fc90c79b89"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.zip",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus network"
  desc "Booru-style media tagger"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  # The `disable!` call overwrites the `deprecation_reason` and livecheck will
  # continue checking this cask (as the reason is `:fails_gatekeeper_check`).
  # This manually skips the cask as a workaround.
  livecheck do
    skip "discontinued"
  end

  # Version 636 was the last version with a macOS app (see:
  # https://github.com/hydrusnetwork/hydrus/releases/tag/v636).
  deprecate! date: "2025-09-03", because: :discontinued
  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus"

  caveats do
    requires_rosetta
  end
end
