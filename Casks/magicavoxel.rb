cask "magicavoxel" do
  version "0.99.4.2"
  sha256 "2ee6e63c45b4e3d7a99b185d48bb9c2b8e8140e88d106c1d86303243379c2729"

  url "https://github.com/ephtracy/ephtracy.github.io/releases/download/#{version.major_minor_patch}/MagicaVoxel-#{version}-alpha-macos.zip",
      verified: "github.com/ephtracy/ephtracy.github.io/"
  name "MagicaVoxel"
  homepage "https://ephtracy.github.io/"

  livecheck do
    url :url
    strategy :git
  end

  suite staged_path, target: "MagicaVoxel"

  zap trash: [
    "~/Library/Preferences/EPH.MagicaVoxel.plist",
    "~/Library/Saved Application State/EPH.MagicaVoxel.savedState",
  ]
end
