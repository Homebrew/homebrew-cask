cask "mat" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.14.0.20230315"
  sha256 arm:   "4fff45cd2518348eaed38522d5a58ad6e4cc4515c08cd89144944c83db52a7f6",
         intel: "236175bc2f306ec963b708b3b765c1684a018d30da4d38c52c9774b80133ddfb"

  url "https://download.eclipse.org/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.#{arch}.dmg"
  name "Eclipse Memory Analyzer"
  desc "Java heap analyzer"
  homepage "https://www.eclipse.org/mat/"

  livecheck do
    url "https://www.eclipse.org/mat/downloads.php"
    regex(/href=.*?MemoryAnalyzer-(\d+(?:\.\d+)*).*?\.dmg/i)
  end

  app "mat.app"

  zap trash: "~/Library/Preferences/org.eclipse.mat.ui.rcp.MemoryAnalyzer.plist"
end
