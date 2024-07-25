cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10094"
  sha256 arm:   "fac3828c906784f8f61f375d4527ee9598f81c06549635845d680b8c122d2877",
         intel: "107393eb19a3c9447c1a7d8bf22113b09608f6127ee254f3ad1e6e066c3b7657"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
