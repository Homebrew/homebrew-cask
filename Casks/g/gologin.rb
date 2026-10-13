cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "4.29.0"
  sha256 arm:   "f681f9b0921ad7e841dd193b8025a86ffda5aed699a6f8e8febdf89918a5a138",
         intel: "5799bea8f13557a7a08fec6b77267594a3f79dc3e1a8af1aa13908756d9509e8"

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
