cask "mat" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.13.0.20220615"

  if Hardware::CPU.intel?
    sha256 "5e866ce672f2d800b902f017edc266406ef1c895e6defde0aac5d895d7966b98"
  else
    sha256 "55a7113181a5aea34d83a471752f81f27988720e2f58edc090e6e2565f020532"
  end

  url "https://download.eclipse.org/mat/#{version.major_minor_patch}/rcp/MemoryAnalyzer-#{version}-macosx.cocoa.#{arch}.dmg"
  name "Eclipse Memory Analyzer"
  desc "Java heap analyzer"
  homepage "https://www.eclipse.org/mat/"

  livecheck do
    url "https://www.eclipse.org/mat/downloads.php"
    regex(/href=.*?MemoryAnalyzer-(\d+(?:\.\d+)*).*?\.dmg/i)
  end

  app "mat.app"
end
