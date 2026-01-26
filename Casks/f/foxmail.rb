cask "foxmail" do
  version "1.5.8.94608"
  sha256 "8315ee4d893597616c0f1aec4bad557cd21569f5bcb1f945e374b330e487d990"

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

  zap trash: [
    "~/Library/Application Scripts/com.tencent.Foxmail*",
    "~/Library/Containers/com.tencent.Foxmail*",
  ]

  caveats do
    requires_rosetta
  end
end
