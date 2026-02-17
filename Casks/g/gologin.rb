cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "4.0.11"
  sha256 arm:   "bd2888ace394255b293190f9543d21dd8820c827f1f9b0313ced21a8ce682271",
         intel: "55c0310d53bbf3adbfbd648aa5bd6d097a9b0743516bc05db79b047a91442a0e"

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
