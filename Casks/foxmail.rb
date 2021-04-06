cask "foxmail" do
  version "1.5.0.94503"
  sha256 "1814c2024ca90ea434b672572d8815ad133db989a531f83543cffa00aa0b76bc"

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
