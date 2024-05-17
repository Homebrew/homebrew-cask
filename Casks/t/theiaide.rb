cask "theiaide" do
  version "1.49.101"
  sha256 "54af7ec2d6a7210f681d40e5d94d47b398d6bcc59532f7347b74155f1a8ecaa9"

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
end
