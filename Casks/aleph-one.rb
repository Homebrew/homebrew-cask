cask "aleph-one" do
  version "20220115"
  sha256 "62d309d33b2b2151df692eb1560e41825530bd1050c54154969de3d0485c7986"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/AlephOne-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Aleph One"
  desc "Open-source continuation of Bungie’s Marathon 2 game engine"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/AlephOne-(\d+)-Mac\.dmg}i)
  end

  app "Aleph One.app"
end
