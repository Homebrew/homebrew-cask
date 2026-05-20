cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10415"
  sha256 arm:   "2da6b5abbd1ed9d6de0cfda9b4ff5d832f6c24bdd1e48fcef49a24de4c0881d5",
         intel: "58f1277ffaa431f4073a1fe3047fbbbf455ca0c816f20004b392861ed27430f7"

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
