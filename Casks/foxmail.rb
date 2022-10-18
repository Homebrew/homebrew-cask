cask "foxmail" do
  version "1.5.6.94576"
  sha256 "c7a4e6b0892f06b432e1f079ebe80f33740eb9e2ca3cf1a4a83149e8015f0bbd"

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
