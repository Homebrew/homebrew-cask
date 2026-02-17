cask "theiaide" do
  arch arm: "-arm"

  version "1.68.201"
  sha256 arm:   "f8d4c0d6c6a03369b0af3901ce3651f539e0329e95dd5da6b4f39b235b671f65",
         intel: "b550423d6c1d2e811a32fd13d07dcded53e78a2328b9cca54835b852aa1a6e2a"

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
  depends_on macos: ">= :monterey"

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
