cask "brightness-sync" do
  version "2.3.2"
  sha256 "b194bc3d3dbb6f05d855c293497019aa7f90bc8c6f794d0296d50e109470344e"

  url "https://github.com/OCJvanDijk/Brightness-Sync/releases/download/v#{version}/Brightness.Sync.app.zip"
  name "Brightness Sync"
  desc "Utility to synchronise the brightness of LG UltraFine display(s)"
  homepage "https://github.com/OCJvanDijk/Brightness-Sync"

  depends_on macos: ">= :catalina"

  app "Brightness Sync.app"
end
