cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10001"
  sha256 arm:   "8d14bf2f39c8898f54b44b7c655c23eebd1291ef8ab34b5f021104f99e76bcdf",
         intel: "12a095262f699faa0e39cae4093c7149397a3b8d4c8844bc0603b7a42d7521e3"

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
