cask "foxmail" do
  version "1.5.8.95111"
  sha256 :no_check

  url "https://www.foxmail.com/mac/download"
  name "Foxmail"
  desc "Email client"
  homepage "https://www.foxmail.com/"

  livecheck do
    url "https://www.foxmail.com/mac/download"
    strategy :header_match
  end

  depends_on :macos

  app "Foxmail.app"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.Foxmail*",
    "~/Library/Containers/com.tencent.Foxmail*",
  ]
end
