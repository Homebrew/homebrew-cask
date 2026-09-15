cask "theiaide" do
  arch arm: "-arm"

  version "1.75.0"
  sha256 arm:   "63679ee3612fdd6ec2d12b0c60b07d07913cc58651181cdf905d4caf179fd5b2",
         intel: "216290b1cffb692d209665be3896e503e750d3785a946e5e48630e5ede2f2b84"

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
