cask "jamkazam" do
  version "1.0.4048"
  sha256 "b8d4b024b9f779de4dd8e10e929b9425a765061bc6b1d3e1bd2b8491ae4e21e8"

  url "https://d34f55ppvvtgi3.cloudfront.net/artifacts/JamClient/MacOSX/#{version}/JamKazam-#{version}.dmg",
      verified: "d34f55ppvvtgi3.cloudfront.net/"
  name "JamKazam"
  desc "Low-latency rehearsing, jamming and performing"
  homepage "https://jamkazam.com/"

  livecheck do
    url "https://www.jamkazam.com/api/artifacts/clients"
    regex(/JamKazam[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "JamKazam.app"

  zap trash: "~/Library/Application Support/JamKazam"
end
