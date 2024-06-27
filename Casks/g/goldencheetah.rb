cask "goldencheetah" do
  version "3.6"
  sha256 "7d3d8f5682f664b030af61b6988b94a333526dbc686cc7d1f94b6f37889cdb50"

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
