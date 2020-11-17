cask "supercollider" do
  version "3.11.2"
  sha256 "0c6cd9c26adfece4eccd2c76156119338603001bbd1999b037a05b154a2adb0c"

  # github.com/supercollider/supercollider/ was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS-signed.zip"
  appcast "https://github.com/supercollider/supercollider/releases.atom"
  name "SuperCollider"
  homepage "https://supercollider.github.io/"

  app "SuperCollider/SuperCollider.app"
end
