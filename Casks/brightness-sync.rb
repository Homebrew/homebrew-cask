cask "brightness-sync" do
  version "2.2.0"
  sha256 "1f0fc9d3d538f8cb5f323b9c8a152533d1299a3fcda607dd6aeb48a663e1a2f2"

  url "https://github.com/OCJvanDijk/Brightness-Sync/releases/download/v#{version}/Brightness.Sync.app.zip"
  appcast "https://github.com/OCJvanDijk/Brightness-Sync/releases.atom"
  name "Brightness Sync"
  desc "Utility to synchronize the brightness of LG UltraFine display(s)"
  homepage "https://github.com/OCJvanDijk/Brightness-Sync"

  depends_on macos: ">= :catalina"

  app "Brightness Sync.app"
end
