cask "loginputmac" do
  version "2.5.3,24161"
  sha256 "9ad1e436283dbb6a60d040c205da3a31e5d97e999f53c6e6ed01682bb36e5857"

  url "https://loginput-mac2.totest.top/LogInputMac#{version.major}.app#{version.csv.second}.zip",
      verified: "loginput-mac2.totest.top/"
  name "LoginputMac"
  desc "Chinese input method"
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  livecheck do
    url "https://im.logcg.com/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "LogInputMac#{version.major}.app"
end
