cask "firecamp" do
  version "2.0.1"
  sha256 "f2567ee4184187473519fb8502a4d01b6cc265646247ffd4dfc80fa9347e917d"

  url "https://firecamp.netlify.app/.netlify/functions/download?pt=mac",
      verified: "firecamp.netlify.app/"
  name "Firecamp"
  desc "Multi-protocol API development platform"
  homepage "https://firecamp.io/"
  
  livecheck do
    url :url
    strategy :header_match
  end

  app "Firecamp.app"
end
