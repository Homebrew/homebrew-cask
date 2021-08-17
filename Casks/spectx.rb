cask "spectx" do
  version "1.4.80"
  sha256 "994d15a078cb566076878e502f89b299e73a89953a5c06a4849c58875ffca8d0"

  url "https://download.spectx.com/versions/#{version}/SpectXDesktop-v#{version}.dmg"
  name "SpectX Desktop"
  desc "Parse and investigate raw log files"
  homepage "https://www.spectx.com/"

  livecheck do
    url "https://www.spectx.com/get-spectx"
    regex(%r{href=.*?/SpectXDesktop[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "SpectXDesktop.app"
end
