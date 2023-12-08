cask "memoryanalyzer" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.15.0.20231206"
  sha256 arm:   "e9feff5992a930a7ca8259cd36ef068df29a24ebb3d021f39bc5166620b9a26f",
         intel: "07333cbe1449b93adce5a8398342aec819972d42d967f24d31be260f8ea0c7fc"

  url "https://download.eclipse.org/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.#{arch}.dmg",
      verified: "download.eclipse.org/mat/"
  name "Eclipse Memory Analyzer"
  desc "Java heap analyzer"
  homepage "https://eclipse.dev/mat/"

  livecheck do
    url "https://eclipse.dev/mat/downloads.php"
    regex(/href=.*?MemoryAnalyzer-(\d+(?:\.\d+)*).*?\.dmg/i)
  end

  app "MemoryAnalyzer.app"

  zap trash: "~/Library/Preferences/org.eclipse.mat.ui.rcp.MemoryAnalyzer.plist"
end
