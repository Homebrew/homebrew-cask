cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10196"
  sha256 arm:   "ebd7366020a79f328a9b3a38653acf8a45ad22eae3b0f4ac23b942b4baa3d606",
         intel: "1a84662a492be096693001568b9c9fa3d4b8090391a91a420547a10f6ec5e0c8"

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
