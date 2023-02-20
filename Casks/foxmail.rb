cask "foxmail" do
  version "1.5.8.94580"
  sha256 "8443e9bd5cfab983725daae69d4b4065db22cd30aba252ce19691a95932a67cd"

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
