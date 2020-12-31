cask "supercollider" do
  version "3.11.2"
  sha256 "0c6cd9c26adfece4eccd2c76156119338603001bbd1999b037a05b154a2adb0c"

  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS-signed.zip",
      verified: "github.com/supercollider/supercollider/"
  appcast "https://github.com/supercollider/supercollider/releases.atom"
  name "SuperCollider"
  homepage "https://supercollider.github.io/"

  app "SuperCollider/SuperCollider.app"
end
