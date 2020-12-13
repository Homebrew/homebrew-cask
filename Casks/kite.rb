cask "kite" do
  version "0.20201203.0"
  sha256 "74de74c8925f6e3d9f0db395e0cfdfe7534c9db3d5c09137cc4d19c42f90670a"

  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg",
      verified: "draqv87tt43s0.cloudfront.net/"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
