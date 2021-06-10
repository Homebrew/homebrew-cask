cask "kite" do
  version "0.20210603.0"
  sha256 "25e3a09d678013d54e3fc0341821ca44a35e517c4872d00b34e881aca6ad0e0e"

  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg",
      verified: "draqv87tt43s0.cloudfront.net/"
  name "Kite"
  desc "Add code completions to all your code editors"
  homepage "https://kite.com/"

  livecheck do
    url "https://release.kite.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Kite.app"
end
