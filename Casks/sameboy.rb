cask "sameboy" do
  version "0.14.3"
  sha256 "8062dcf7a5cd5f1c1c2cb9974f06869721b9d7e04d63ec9f633db278397e6d1e"

  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip",
      verified: "github.com/LIJI32/SameBoy/"
  name "SameBoy"
  desc "Game Boy and Game Boy Color emulator written in C"
  homepage "https://sameboy.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "SameBoy.app"
end
