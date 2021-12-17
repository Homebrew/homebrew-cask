cask "loginputmac" do
  version "2.5.1,24052"
  sha256 "adf15f31538287824ecfc28e8b193399bac9025f9fe6fea931bb1f22e122f370"

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
