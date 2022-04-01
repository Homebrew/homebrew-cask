cask "mp4tools" do
  version "3.7.2"
  sha256 "e4101837c5539f3f0441af3a1f02219636124a0f80e02f733f04cbf05ec11123"

  url "https://www.emmgunn.com/downloads/mp4tools#{version}.zip"
  name "MP4tools"
  desc "Create and edit MP4 videos"
  homepage "https://www.emmgunn.com/mp4tools-home/"

  livecheck do
    url "https://www.emmgunn.com/mp4tools-home/mp4tools-downloads/"
    regex(%r{href=.*?/mp4tools(\d+(?:\.\d+)*)\.zip}i)
  end

  app "mp4tools#{version}/MP4Tools.app"

  zap trash: [
    "~/Library/Application Support/EmmGunn",
    "~/Library/Preferences/com.emmgunn.MP4tools#{version.major}.plist",
  ]
end
