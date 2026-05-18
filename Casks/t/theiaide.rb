cask "theiaide" do
  arch arm: "-arm"

  version "1.71.101"
  sha256 arm:   "b3461409769280ac1f6551e94812ed94d90a35153719652471b1049e292a7a68",
         intel: "dbf2fa111723cd81dbbaa0c04bcc4535d40441e2a4c8b5431878ca7b5c0cc09b"

  url "https://download.eclipse.org/theia/ide/#{version}/macos#{arch}/TheiaIDE.dmg",
      verified: "download.eclipse.org/theia/ide/"
  name "TheiaIDE"
  desc "IDE framework"
  homepage "https://theia-ide.org/"

  livecheck do
    url "https://download.eclipse.org/theia/ide/latest/macos#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "TheiaIDE.app"

  zap trash: [
    "~/.theia-ide",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/eclipse.theia.sfl*",
    "~/Library/Application Support/Theia IDE",
    "~/Library/Logs/Theia IDE",
    "~/Library/Preferences/eclipse.theia.plist",
    "~/Library/Saved Application State/eclipse.theia.savedState",
  ]
end
