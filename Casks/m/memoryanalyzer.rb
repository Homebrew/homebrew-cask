cask "memoryanalyzer" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.16.0.20241216"
  sha256 arm:   "7bfc59d5f4be2d1d0ad9c79326d4ea44bfa6fe1c4aa98a4efdafc252454c368d",
         intel: "c0c796dbe22ba1d4b005ff0a287dd6a7d74988ecb41107c822778cacb96d1fa6"

  url "https://download.eclipse.org/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.#{arch}.dmg",
      verified: "download.eclipse.org/mat/"
  name "Eclipse Memory Analyzer"
  desc "Java heap analyzer"
  homepage "https://eclipse.dev/mat/"

  livecheck do
    url "https://eclipse.dev/mat/download/"
    regex(/href=.*?MemoryAnalyzer-(\d+(?:\.\d+)*).*?\.dmg/i)
  end

  app "MemoryAnalyzer.app"

  zap trash: "~/Library/Preferences/org.eclipse.mat.ui.rcp.MemoryAnalyzer.plist"
end
