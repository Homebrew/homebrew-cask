cask "goldencheetah" do
  version "3.5"
  sha256 "02518bee5427ec126aa2fdb3d3c6d236c03dd25a78623c36e8f3d27080028f2a"

  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version}/GoldenCheetah_v#{version}_64bit_MacOS.dmg",
      verified: "github.com/GoldenCheetah/GoldenCheetah/"
  name "GoldenCheetah"
  desc "Performance software for cyclists, runners and triathletes"
  homepage "https://www.goldencheetah.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "GoldenCheetah.app"
end
