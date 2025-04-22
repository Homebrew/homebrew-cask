cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10223"
  sha256 arm:   "5171363324d7adf07d5d699370336ff5af3dc2d1e8de2d159a9af49e4c88aecc",
         intel: "3f2147c3bc90ca23b94a2380c0c8c92dc49ab66008bb2c788df1e8bd99def345"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
