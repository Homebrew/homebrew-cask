cask "choice-financial-terminal" do
  arch arm: "arm", intel: "x86"

  version "8.1.0"
  sha256 :no_check

  url "https://choice-app.eastmoney.com/choice/OfflinePackage/ChoiceSetup_mac_#{arch}.dmg"
  name "Choice Financial Terminal"
  name "Choice金融终端"
  desc "Financial Information Acquisition Platform"
  homepage "https://choice.eastmoney.com/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Choice金融终端.app"

  zap trash: [
    "~/Library/Application Support/Choice",
    "~/Library/Logs/Choice金融终端_debug.log",
    "~/Library/Preferences/org.cef.Choice.helper.renderer.plist",
    "~/Library/Saved Application State/com.eastmoney.choice.savedState",
  ]
end
