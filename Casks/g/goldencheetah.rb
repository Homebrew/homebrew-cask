cask "goldencheetah" do
  version "3.7"
  sha256 "000f49df0cb3da1b8b48656f8c0fecb7591be9a0d3eae400d54b76d52d465363"

  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/v#{version}/GoldenCheetah_v#{version}_x64.dmg",
      verified: "github.com/GoldenCheetah/GoldenCheetah/"
  name "GoldenCheetah"
  desc "Performance software for cyclists, runners and triathletes"
  homepage "https://www.goldencheetah.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "GoldenCheetah.app"

  caveats do
    requires_rosetta
  end
end
