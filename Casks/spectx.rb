cask "spectx" do
  version "1.4.76"
  sha256 "562abd4fd438aaaf4d62ec4f36178cdc43847a234ae9dfacf8178dfbcb3a80f5"

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
