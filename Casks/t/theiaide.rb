cask "theiaide" do
  version "1.51.0"
  sha256 "69fe0cd4a927e5ed3372ddd223913ecd4798b6c4f62b012c5e82e5b0826fd8fe"

  url "https://download.eclipse.org/theia/ide/#{version}/macos/TheiaIDE.dmg",
      verified: "download.eclipse.org/theia/ide/"
  name "TheiaIDE"
  desc "IDE framework"
  homepage "https://theia-ide.org/"

  livecheck do
    url "https://download.eclipse.org/theia/ide/latest/macos/"
    regex(/href=.*?TheiaIDE[._-]v?(\d+(?:\.\d+)+)(?:-mac)?\.zip/i)
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

  caveats do
    requires_rosetta
  end
end
