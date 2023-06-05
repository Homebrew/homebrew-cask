cask "jprofiler" do
  version "13.0.6"
  sha256 "388e8d48fa98c2ce51bf6e54e6320fce4c89b41f0b174e2a1c1dcd3d1f570568"

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
