cask "spectx" do
  version "1.4.69"
  sha256 "eef2b25d18ac79b97d3044b3dcd980428542aeff6236aa6557e2bbb373ba7f51"

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
