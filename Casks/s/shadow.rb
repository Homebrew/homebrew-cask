cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10324"
  sha256 arm:   "14be058ca04f75ed3819224abb9ed7a240df14adaeaedb85e9844a6bf6431d5c",
         intel: "23b557e56e261443bf98030c406b86ed0fc3611185898b52cd35f4a6537a1d2f"

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
