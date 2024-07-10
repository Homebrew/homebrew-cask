cask "foxmail" do
  version "1.5.8.94590"
  sha256 "fa31a882583a5bd72288ec671293299c95dcaecddd4a059b691f5eafcd78126b"

  url "https://dldir1.qq.com/foxmail/MacFoxmail/Foxmail_for_Mac_#{version}.dmg",
      verified: "dldir1.qq.com/foxmail/MacFoxmail/"
  name "Foxmail"
  desc "Email client"
  homepage "https://www.foxmail.com/"

  livecheck do
    url "https://www.foxmail.com/mac/download"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Foxmail.app"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.Foxmail*",
    "~/Library/Containers/com.tencent.Foxmail*",
  ]

  caveats do
    requires_rosetta
  end
end
