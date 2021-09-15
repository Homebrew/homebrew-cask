cask "foxmail" do
  version "1.5.4.94534"
  sha256 "53b109bb479d13a3e53d668c18f78095d1780b26c38baea40da4d13e4ef75a5f"

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
