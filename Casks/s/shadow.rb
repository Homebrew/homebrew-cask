cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10175"
  sha256 arm:   "729bd750edfff3067f67b2a44acfab4163ee09f859ceb8451071c5f417be3303",
         intel: "b17a5dd5f292dd607f6a080306a4e3670ea102ef58ee289b7547bcee4601f40c"

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
