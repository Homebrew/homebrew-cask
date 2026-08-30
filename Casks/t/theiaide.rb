cask "theiaide" do
  arch arm: "-arm"

  version "1.74.100"
  sha256 arm:   "50fd68c20bdf01dacf695aea9b9ec9312a84e6b6ce38b3bf83952c6a5b03257f",
         intel: "a71eeb339b75c77ac0e1f7a633a3e236cf3a4f23b626a8c1c73a7289367a7af2"

  url "https://download.eclipse.org/theia/ide/#{version}/macos#{arch}/TheiaIDE.dmg"
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
