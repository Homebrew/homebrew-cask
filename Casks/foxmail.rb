cask "foxmail" do
  version "1.5.1.94507"
  sha256 "9883d828d97a5ec5856efb1b108681a1ed73d50b092cbafc0e1ade30f908e9cb"

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
