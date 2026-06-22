cask "memoryanalyzer" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.17.0.20260601"
  sha256 arm:   "c89471ecc07b6d30d665151d5358bc7aa3a3a7d490702a812c742581197243e0",
         intel: "aac44fb5584c952a003b6396e29e8eca630b0bddda1fd6f33fd3297411fe3449"

  url "https://download.eclipse.org/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.#{arch}.dmg",
      verified: "download.eclipse.org/mat/"
  name "Eclipse Memory Analyzer"
  desc "Java heap analyzer"
  homepage "https://eclipse.dev/mat/"

  livecheck do
    url "https://eclipse.dev/mat/download/"
    regex(/href=.*?MemoryAnalyzer-(\d+(?:\.\d+)*).*?\.dmg/i)
  end

  depends_on macos: :big_sur

  app "MemoryAnalyzer.app"

  zap trash: "~/Library/Preferences/org.eclipse.mat.ui.rcp.MemoryAnalyzer.plist"
end
