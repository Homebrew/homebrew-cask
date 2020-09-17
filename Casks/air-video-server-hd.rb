cask "air-video-server-hd" do
  version "2.3.0-beta1u1"
  sha256 "1e45abf868349f1ad43b6f3a1234a254d31e943ef5c7d72b84eff9f955a15a33"

  # s3.amazonaws.com/AirVideoHD/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  appcast "https://s3.amazonaws.com/AirVideoHD/Download/appcast.xml"
  name "Air Video Server HD"
  desc "Tool to stream videos to Apple devices"
  homepage "https://airvideo.app/"

  app "Air Video Server HD.app"

  zap trash: [
    "~/Library/Caches/com.inmethod.AirVideoServerHD",
    "~/Library/Logs/AirVideoServerHD",
    "~/Library/Preferences/com.inmethod.AirVideoServerHD.plist",
  ]
end
