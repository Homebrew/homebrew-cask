cask "magicavoxel" do
  version "0.99.6.2"
  sha256 "4ee661e41da07f8c2b2b1c916bd1e18f7c5229900f30467eeea73ad74e861226"

  url "https://github.com/ephtracy/ephtracy.github.io/releases/download/#{version.major_minor_patch}/MagicaVoxel-#{version}-macos-10.15.zip",
      verified: "github.com/ephtracy/ephtracy.github.io/"
  appcast "https://github.com/ephtracy/ephtracy.github.io/releases.atom",
          must_contain: version.major_minor_patch
  name "MagicaVoxel"
  desc "8-bit 3D voxel editor and interactive path tracing renderer"
  homepage "https://ephtracy.github.io/"

  suite staged_path, target: "MagicaVoxel"

  zap trash: [
    "~/Library/Preferences/EPH.MagicaVoxel.plist",
    "~/Library/Saved Application State/EPH.MagicaVoxel.savedState",
  ]
end
