cask "memoryanalyzer" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.16.1.20250109"
  sha256 arm:   "01ac5effe6479f013c32c2f8d75ed08e7ec0f848f5ce301b5fa47de7f34c2654",
         intel: "9cd8ad2e726da6e1300bdb115cc22c929e69707de56cc2873cac5067848254ea"

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
