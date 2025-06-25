cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10248"
  sha256 arm:   "f7ea28ab77aa96b6a832a53fb4b5a4776d4eadf34841a862a7fb800199580dc4",
         intel: "037cd16262df63c695ce5716348e796be8ba7d37a0caa105c54d910f44dea84c"

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
