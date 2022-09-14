cask "sonic-pi" do
  version "4.2.0"
  sha256 "08fa08e5a6fbdc8adb000a832c03e4f98aeaf8688104b7c6ecf54a0a3ab9d0e0"

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
