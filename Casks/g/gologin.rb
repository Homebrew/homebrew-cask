cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "4.39.6"
  sha256 arm:   "cdc287f3a23203ed6f0e436e3c07738e70fa928931d7ef07f9fefa11398aa185",
         intel: "ad2742c65317781136eea8118023c30b933a15e28d1fa6dbf72d308617ced846"

  url "https://releases#{livecheck_arch}.gologin.com/Gologin-#{version}#{arch}.dmg"
  name "Gologin"
  desc "Antidetect browser"
  homepage "https://gologin.com/"

  livecheck do
    url "https://releases.gologin.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Gologin.app"

  zap trash: [
    "~/.gologin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gologin.desktop.sfl*",
    "~/Library/Application Support/Gologin",
    "~/Library/Preferences/com.gologin.desktop.plist",
    "~/Library/Preferences/com.gologin.orbita.plist",
    "~/Library/Saved Application State/com.gologin.desktop.savedState",
    "~/Library/Saved Application State/com.gologin.orbita.savedState",
  ]
end
