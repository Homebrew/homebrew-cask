cask "aleph-one" do
  version "20230529"
  sha256 "7b1b68fde5d8e426b7d6ed1ab70c048983d626c388b80d2ed0254a17288390db"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/AlephOne-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Aleph One"
  desc "Open-source continuation of Bungie’s Marathon 2 game engine"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/AlephOne[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  app "Aleph One.app"
end
