cask "jamkazam" do
  version "1.0.3776"
  sha256 "5bd66618cc8bd9759d3d376c70fbf9d4feb0b71f54ba09e423c501d572d51ef8"

  url "https://d34f55ppvvtgi3.cloudfront.net/artifacts/JamClient/MacOSX/#{version}/JamKazam-#{version}.dmg",
      verified: "d34f55ppvvtgi3.cloudfront.net/"
  name "JamKazam"
  desc "Low-latency rehearsing, jamming and performing"
  homepage "https://jamkazam.com/"

  app "JamKazam.app"
end
