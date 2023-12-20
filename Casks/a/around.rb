cask "around" do
  arch arm: "-arm64"

  version "1.1.16"
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
  depends_on macos: ">= :high_sierra"

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
