cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10159"
  sha256 arm:   "7bf01900baae49a55a3062ceed557eabb55291790960238097ec9db8ce9fb4e3",
         intel: "2092062ac7c3085fa8d4291ed30ce1d3cc9f0a40f4c43af6812cb270b881269b"

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
