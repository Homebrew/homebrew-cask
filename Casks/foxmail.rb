cask "foxmail" do
  version "1.5.2.94514"
  sha256 "7b56d2eb5e4cb29773b407daaf7e3c375273cb3d98ca6f413f22d558f64b752e"

  url "https://dldir1.qq.com/foxmail/MacFoxmail/Foxmail_for_Mac_#{version}.dmg",
      verified: "dldir1.qq.com/foxmail/MacFoxmail/"
  name "Foxmail"
  desc "Email client"
  homepage "https://www.foxmail.com/"

  livecheck do
    url "https://www.foxmail.com/mac/download"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "Foxmail.app"
end
