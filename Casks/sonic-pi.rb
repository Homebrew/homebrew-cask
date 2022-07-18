cask "sonic-pi" do
  version "4.0.3"
  sha256 "68c31ce8679759aac565794d962970b86cdd36dce5b59c9d92c9a8810bec2119"

  url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version.dots_to_hyphens}.dmg"
  name "Sonic Pi"
  desc "Code-based music creation and performance tool"
  homepage "https://sonic-pi.net/"

  livecheck do
    url "https://github.com/samaaron/sonic-pi"
    strategy :git
  end

  app "Sonic Pi.app"
end
