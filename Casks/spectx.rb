cask "spectx" do
  version "1.4.75"
  sha256 "4658f7578fd95d9c3817620d444cec1b0d6647d6b88ecca3f051f0b5f45fb655"

  url "https://download.spectx.com/versions/#{version}/SpectXDesktop-v#{version}.dmg"
  name "SpectX Desktop"
  desc "Parse and investigate raw log files"
  homepage "https://www.spectx.com/"

  livecheck do
    url "https://www.spectx.com/get-spectx"
    strategy :page_match
    regex(%r{href=.*?/SpectXDesktop-v?(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "SpectXDesktop.app"
end
