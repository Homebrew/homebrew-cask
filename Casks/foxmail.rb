cask "foxmail" do
  version "1.4.3.94169"
  sha256 "e9821bd3d3b9ed3b46ca7a8195a51c4d53fdc5877adc3916dbb37734165a0008"

  url "https://dldir1.qq.com/foxmail/MacFoxmail/Foxmail_for_Mac_#{version}.dmg",
      verified: "dldir1.qq.com/foxmail/MacFoxmail/"
  name "Foxmail"
  desc "Email client"
  homepage "https://www.foxmail.com/"

  livecheck do
    url "https://www.foxmail.com/mac/download"
    strategy :header_match
  end

  app "Foxmail.app"
end
