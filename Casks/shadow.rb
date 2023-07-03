cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10123"
  sha256 arm:   "df7939f8d4b6e3489a2e8e717b6b2fc47b59f2cc8508150b4c10989a99ab353b",
         intel: "e4e47d675c02217aa3901217daaf40b6d6237e4830c4598a3f596a1ff5f04aa5"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualized computer"
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
