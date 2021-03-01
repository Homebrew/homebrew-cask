cask "spectx" do
  version "1.4.70"
  sha256 "cf827926c331cf095b628b55a13cf0ab26c6a06f926ea7a131bd63d02c9667e9"

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
