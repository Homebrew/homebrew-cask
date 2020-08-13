cask "sigviewer" do
  version "0.6.4"
  sha256 "ae253cbf79376fb2de9c7d334b306ca08e615d90e446ebbfbcebefebce81bb64"

  url "https://github.com/cbrnr/sigviewer/releases/download/v#{version}/sigviewer-#{version}-macos.dmg"
  appcast "https://github.com/cbrnr/sigviewer/releases.atom"
  name "SigViewer"
  homepage "https://github.com/cbrnr/sigviewer"

  app "sigviewer.app"

  zap trash: [
    "~/Library/Preferences/com.http-github-com-cbrnr-sigviewer.SigViewer.plist",
    "~/Library/Preferences/com.yourcompany.sigviewer.plist",
    "~/Library/Application Support/CrashReporter/sigviewer_*.plist",
    "~/Library/Logs/DiagnosticReports/sigviewer_*.crash",
    "~/Library/Saved Application State/com.yourcompany.sigviewer.savedState",
  ]
end
