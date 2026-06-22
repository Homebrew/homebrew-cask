cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "4.3.3"
  sha256 arm:   "76ae38955abd027e32d2aa472a691c9df9b64a30b8f920273c16fe879b5fa3e7",
         intel: "bce3b29396837580dd297b8a746d37e37c86b40131440d87109543fabec26882"

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
