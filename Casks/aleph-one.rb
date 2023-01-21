cask "aleph-one" do
  version "20230119"
  sha256 "c261cbae3c7538ab6b85ecd6e64373b82a8059f568ea5de1f8517ec0c0714532"

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
