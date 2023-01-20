cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version "4.2.0"
  sha256 arm:   "7cbc03cc0e9a4a1769e4321815ed99384de8c063990eb5d746ffbd7599e32193",
         intel: "89308cb7222ec0d0b539771dd90284e98b35bae4b53c8f3aa1b2feb861536b82"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}_#{arch}.dmg",
      verified: "github.com/darktable-org/darktable/"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  livecheck do
    url "https://www.darktable.org/install/"
    regex(/href=.*?darktable[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "darktable.app"
end
