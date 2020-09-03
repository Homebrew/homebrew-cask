cask "supercollider" do
  version "3.11.1"
  sha256 "bca1b6e9e890970465e49a50fe0cef8bf9ab2a525f3c3638e6f53babac6cbf66"

  # github.com/supercollider/supercollider/ was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS-signed.zip"
  appcast "https://github.com/supercollider/supercollider/releases.atom"
  name "SuperCollider"
  homepage "https://supercollider.github.io/"

  app "SuperCollider/SuperCollider.app"
end
