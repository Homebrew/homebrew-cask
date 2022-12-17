cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10018"
  sha256 arm:   "8f78739a8c045a31e85dc167aa8c82e001eda995e6f913d7fed49547c8f10c84",
         intel: "e05e6fbf9708e6a313eb951cf9804ed7afb4d47dd65b5ecc556be3e87fdfd6dd"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/Shadow-#{version}.dmg"
  name "Shadow"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
