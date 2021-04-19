cask "air-video-server-hd" do
  version "1.0.15,100.15"
  sha256 "06fa8089a3cc7ba7e6386aff9bab5f5827fc4add47ff4021e00d82b1d7a432b8"

  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version.before_comma}.dmg",
      verified: "s3.amazonaws.com/AirVideoHD/"
  name "Air Video Server HD"
  desc "Tool to stream videos to Apple devices"
  homepage "https://airvideo.app/"

  livecheck do
    url "https://s3.amazonaws.com/AirVideoHD/Download/appcast.xml"
    strategy :sparkle
  end

  app "Air Video Server HD.app"

  zap trash: [
    "~/Library/Caches/com.inmethod.AirVideoServerHD",
    "~/Library/Logs/AirVideoServerHD",
    "~/Library/Preferences/com.inmethod.AirVideoServerHD.plist",
  ]
end
