cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "4.1.1"
  sha256 arm:   "b3d530c09ef5e222f69acae5e8cb19ad3c7d29b008a03807d5ffaf8964671163",
         intel: "5caffd106c14188f516282de62ab5ecd229658c785a3c9cd37bce5c6ad2000ff"

  url "https://releases#{livecheck_arch}.gologin.com/Gologin-#{version}#{arch}.dmg"
  name "Gologin"
  desc "Antidetect browser"
  homepage "https://gologin.com/"

  livecheck do
    url "https://releases.gologin.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
