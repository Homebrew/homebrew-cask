cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "4.14.1"
  sha256 arm:   "517679f4ea5d4e7738a2b6298526b2bbd4398e7057a633ae7ca1b5322dee4c9b",
         intel: "20b8855d319ccb7a5f54ed4cf4ffb4fd12929d24f66d8b7fce12a87a0e0ac900"

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
