cask "foxmail" do
  version "1.5.2.94520"
  sha256 "f486e6e9ff3703f815e2d0dfe28d2f78d9dabd74f67b24e08513b6b381d07329"

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
