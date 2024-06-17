cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10056"
  sha256 arm:   "a4212f3397665ad5b324528597e26884611e898dc53df27819bd4fec381aca3d",
         intel: "b9d47cc8a852ec2b15ed24bf67746375ffa8383ea53b250ec48856e8dcca5994"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualised computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
