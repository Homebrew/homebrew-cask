cask "loginputmac" do
  version "2.5.0,24041"
  sha256 "6d7282596ef8a45dc67eeafd7efcb582fc37797377b100200c9916b6ce20e8ea"

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
