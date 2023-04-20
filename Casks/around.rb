cask "around" do
  arch arm: "-arm64"

  version "0.64.69"
  sha256 :no_check

  url "https://downloads.around.co/Around#{arch}.dmg"
  name "Around"
  desc "Video calls designed for energy, ideas and action"
  homepage "https://www.around.co/"

  livecheck do
    url "https://downloads.around.co/latest.yml"
    regex(/version: (\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "Around.app"

  uninstall quit: "co.teamport.around"

  zap trash: [
    "~/Library/Application Support/Around",
    "~/Library/Caches/co.around.installer",
    "~/Library/Preferences/co.teamport.around.plist",
    "~/Library/Saved Application State/co.around.installer.savedState",
    "~/Library/Saved Application State/co.teamport.around.savedState",
  ]
end
