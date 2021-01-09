cask "aleph-one" do
  version "20200904"
  sha256 "dd7cc3ed66405a81061b47c8c49d5bf91c4f89e0d194b51aa1f6f794fdc461b2"

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
