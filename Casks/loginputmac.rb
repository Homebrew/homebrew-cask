cask "loginputmac" do
  version "2.5.2,24120"
  sha256 "582a93566cbb8bf79bfbfbae5bd404985506e59c57479a202ecb88f5e4aa630f"

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
