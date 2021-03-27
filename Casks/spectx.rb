cask "spectx" do
  version "1.4.72"
  sha256 "8149ab4f61fe920c286789627bd9789e88b7223d5293037322d4159706b37013"

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
