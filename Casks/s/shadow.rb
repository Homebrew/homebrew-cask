cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10489"
  sha256 arm:   "855639a7cbe28b1bf017ba3c98b1c1fc74e7e339297bc09ca317745106042d5c",
         intel: "61f1eefa022fb1f88d7c7b6a76efb058294fe39bc91bbef5ceb36d2df48e588a"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualised computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
