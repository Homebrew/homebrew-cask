cask "sameboy" do
  version "0.14.2"
  sha256 "c975e41b5558ac94523a6b73cb1d0e4d5390e5cbdaff5e3c23bd79ad91f42ffb"

  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip",
      verified: "github.com/LIJI32/SameBoy/"
  name "SameBoy"
  desc "Game Boy and Game Boy Color emulator written in C"
  homepage "https://sameboy.github.io/"

  depends_on macos: ">= :sierra"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SameBoy.app"
end
