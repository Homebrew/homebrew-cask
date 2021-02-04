cask "ludusavi" do
  version "0.9.0"
  sha256 "d1312079faf97b1e8b3d58dca6663f17dff0813a6e72b5ed396586b56f1a0407"

  url "https://github.com/mtkennerly/ludusavi/releases/download/v#{version}/ludusavi-v#{version}-mac.zip"
  name "ludusavi"
  desc "Tool for backing up your video game save data"
  homepage "https://github.com/mtkennerly/ludusavi"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "ludusavi"

  zap trash: [
    "~/.config/ludusavi",
  ]
end
