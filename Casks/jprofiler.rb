cask "jprofiler" do
  version "13.0.3"
  sha256 "5be457ead455967a10d9254595936b84ffb3b4797300404067b541c03262084b"

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  name "JProfiler"
  desc "Java profiler"
  homepage "https://www.ej-technologies.com/products/jprofiler/overview.html"

  livecheck do
    url "https://www.ej-technologies.com/feeds/jprofiler/"
    regex(/JProfiler\s*Release\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "JProfiler.app"
end
