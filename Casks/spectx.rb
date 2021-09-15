cask "spectx" do
  version "1.4.83"
  sha256 "4ede94560d9dcc8811efe62c27165f2834f281ad44bb7908eb02abb528b0a1da"

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
