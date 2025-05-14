cask "theiaide" do
  arch arm: "-arm"

  version "1.61.0"
  sha256 arm:   "fba5077754aafc6f508156d2e02084806a48be180a0130514cf3626393fe0de8",
         intel: "d47e2df969a958832f7154db987c8503a782be92ddadbd73f070ba9375b986b8"

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
  depends_on macos: ">= :high_sierra"

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
