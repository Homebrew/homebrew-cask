cask "brightness-sync" do
  version "2.3.0"
  sha256 "e94973ee405ad485d225e408452facfcb449ff3bcf9db80964e8da5449635c24"

  url "https://github.com/OCJvanDijk/Brightness-Sync/releases/download/v#{version}/Brightness.Sync.app.zip"
  appcast "https://github.com/OCJvanDijk/Brightness-Sync/releases.atom"
  name "Brightness Sync"
  desc "Utility to synchronize the brightness of LG UltraFine display(s)"
  homepage "https://github.com/OCJvanDijk/Brightness-Sync"

  depends_on macos: ">= :catalina"

  app "Brightness Sync.app"
end
