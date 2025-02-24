cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "3.3.80"
  sha256 arm:   "96f6a5c6b1dcf5f6c4f5603c628f2188e2f2f288c1ff4c2b07d163a89bbfb4b4",
         intel: "9f5461c37049015e296a060d0b2321c66b9eab0a64f43aeb8e94fae021745669"

  url "https://releases#{livecheck_arch}.gologin.com/GoLogin-#{version}#{arch}.dmg"
  name "GoLogin"
  desc "Antidetect browser"
  homepage "https://gologin.com/"

  livecheck do
    url "https://releases#{livecheck_arch}.gologin.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
