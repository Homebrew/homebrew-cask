cask "jprofiler" do
  version "12.0.3"
  sha256 "f7e440800316277359c42a462b88d63c89b314d82ffa8764a36d1e7fc8c5a342"

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  name "JProfiler"
  desc "Java profiler"
  homepage "https://www.ej-technologies.com/products/jprofiler/overview.html"

  livecheck do
    url "https://www.ej-technologies.com/feeds/jprofiler/"
    strategy :page_match
    regex(/JProfiler\s*Release\s*(\d+(?:\.\d+)*)/i)
  end

  app "JProfiler.app"
end
