cask "brightness-sync" do
  version "2.3.1"
  sha256 "3f19d9bdc59de7f882906c9e508ff27f377517f43659444fa712fdcb516bbcd6"

  url "https://github.com/OCJvanDijk/Brightness-Sync/releases/download/v#{version}/Brightness.Sync.app.zip"
  appcast "https://github.com/OCJvanDijk/Brightness-Sync/releases.atom"
  name "Brightness Sync"
  desc "Utility to synchronize the brightness of LG UltraFine display(s)"
  homepage "https://github.com/OCJvanDijk/Brightness-Sync"

  depends_on macos: ">= :catalina"

  app "Brightness Sync.app"
end
