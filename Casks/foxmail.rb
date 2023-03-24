cask "foxmail" do
  version "1.5.8.94588"
  sha256 "03a34747551fc247d6bafe23101317abc7aca17b615878ee93a38c1d0778a001"

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

  zap trash: [
    "~/Library/Application Scripts/com.tencent.Foxmail*",
    "~/Library/Containers/com.tencent.Foxmail*",
  ]
end
