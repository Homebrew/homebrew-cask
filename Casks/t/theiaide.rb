cask "theiaide" do
  arch arm: "-arm"

  version "1.76.1"
  sha256 arm:   "43460daafa7a7ee6915ea09a7e20f257a8fdcbadb7273fad4ce560a044d0e078",
         intel: "c2e3749b610e2e2fcf5170f88d984e20b739a90c52860bb032d5130a12fbbfbb"

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
