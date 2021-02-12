cask "foxmail" do
  version "1.4.3.94171"
  sha256 "86a1d5a421f24023e8d75e8634f76268cc346fa725a3fca3f2573f8e98ade0a3"

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
