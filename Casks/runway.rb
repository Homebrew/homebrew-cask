cask "runway" do
  version "0.14.0"
  sha256 "904f13785376ad0523fc0a2b7346c11c597498aa515a4a9439fa295891f2215b"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
