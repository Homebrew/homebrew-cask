cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10105"
  sha256 arm:   "238d184431563b39e7739451cfff833804166e0bbdcd5a5586346d3a30b5cbe8",
         intel: "66c3d5e2a6f4bc4924444796369a6b2625f1c98f07e7d315cfc109c52f7dec51"

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
