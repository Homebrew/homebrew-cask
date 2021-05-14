cask "aleph-one" do
  version "20210408"
  sha256 "5e400ff462e2961f49f89ccc2008ebfbc45818f8b8aa0152342c41d45ebb25b6"

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
