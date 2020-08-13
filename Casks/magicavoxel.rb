cask "magicavoxel" do
  version "0.99.4.2"
  sha256 "2ee6e63c45b4e3d7a99b185d48bb9c2b8e8140e88d106c1d86303243379c2729"

  # github.com/ephtracy/ephtracy.github.io/ was verified as official when first introduced to the cask
  url "https://github.com/ephtracy/ephtracy.github.io/releases/download/#{version.major_minor_patch}/MagicaVoxel-#{version}-alpha-macos.zip"
  appcast "https://github.com/ephtracy/ephtracy.github.io/releases.atom",
          must_contain: version.major_minor_patch
  name "MagicaVoxel"
  homepage "https://ephtracy.github.io/"

  suite staged_path, target: "MagicaVoxel"

  zap trash: [
    "~/Library/Preferences/EPH.MagicaVoxel.plist",
    "~/Library/Saved Application State/EPH.MagicaVoxel.savedState",
  ]
end
