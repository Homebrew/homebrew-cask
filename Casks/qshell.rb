cask "qshell" do
  version "5.4.0"
  sha256 "9ee467f1063f491da44f67014c38fc45cca386098d21d7230ed6479b2373e891"

  url "https://github.com/tea4go/qshell/releases/download/v#{version}/QShell_macos_universal.zip"
  name "QShell"
  desc "GUI application with terminal, SFTP, Markdown, and remote desktop features"
  homepage "https://github.com/tea4go/qshell"

  app "QShell.app"
  
  # 提供命令行工具
  binary "QShell.app/Contents/MacOS/QShell", target: "qshell"
  
  zap trash: [
    "~/Library/Preferences/com.tea4go.qshell.plist",
    "~/Library/Saved Application State/com.tea4go.qshell.savedState"
  ]
end
