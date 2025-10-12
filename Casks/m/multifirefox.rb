cask "multifirefox" do
  version "2.3.3"
  sha256 "da08ec6b31a928549783aefcd54664fcf26e107bf09bb1d5439e769a2273b537"

  url "https://mff_sparkle.s3.amazonaws.com/MultiFirefox_#{version}.zip",
      verified: "mff_sparkle.s3.amazonaws.com/"
  name "MultiFirefox"
  desc "Launcher utility to run multiple versions of Firefox side-by-side"
  homepage "https://davemartorana.com/multifirefox/"

  deprecate! date: "2024-10-12", because: :unmaintained
  disable! date: "2025-10-12", because: :unmaintained

  app "MultiFirefox.app"

  caveats do
    requires_rosetta
  end
end
