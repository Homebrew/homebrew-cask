cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "4.0.7"
  sha256 arm:   "a25a067703080424ccb93e3122ee4e8ee9987cd209a685e546c534d595078baa",
         intel: "85eb1d37e494682f93723d62af3149d56609e4921f3b30b4e91ea43d1dbfc020"

  url "https://releases#{livecheck_arch}.gologin.com/GoLogin-#{version}#{arch}.dmg"
  name "GoLogin"
  desc "Antidetect browser"
  homepage "https://gologin.com/"

  livecheck do
    url "https://releases.gologin.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "GoLogin.app"

  zap trash: [
    "~/.gologin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gologin.desktop.sfl*",
    "~/Library/Application Support/GoLogin",
    "~/Library/Preferences/com.gologin.desktop.plist",
    "~/Library/Preferences/com.gologin.orbita.plist",
    "~/Library/Saved Application State/com.gologin.desktop.savedState",
    "~/Library/Saved Application State/com.gologin.orbita.savedState",
  ]
end
