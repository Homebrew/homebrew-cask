cask "goldencheetah" do
  version "3.5"
  sha256 "02518bee5427ec126aa2fdb3d3c6d236c03dd25a78623c36e8f3d27080028f2a"

  # github.com/GoldenCheetah/GoldenCheetah/ was verified as official when first introduced to the cask
  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version}/GoldenCheetah_v#{version}_64bit_MacOS.dmg"
  appcast "https://github.com/GoldenCheetah/GoldenCheetah/releases.atom"
  name "GoldenCheetah"
  desc "Performance software for cyclists, runners and triathletes"
  homepage "https://www.goldencheetah.org/"

  app "GoldenCheetah.app"
end
