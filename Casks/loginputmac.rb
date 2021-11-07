cask "loginputmac" do
  version "2.4.9,23712"
  sha256 "6a97ef744d4d846c31dc822bb05c581ae1688841bc8902633ec06bd797461ccd"

  url "https://loginput-mac2.totest.top/LogInputMac#{version.major}.app#{version.after_comma}.zip",
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
