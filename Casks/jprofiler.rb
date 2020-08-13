cask "jprofiler" do
  version "11.1.4"
  sha256 "583306ac3b0c758d7ffd630782bfbf60a4b11d6b7a035743d4f77f32e0ce6b3f"

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast "https://www.ej-technologies.com/feeds/jprofiler/"
  name "JProfiler"
  homepage "https://www.ej-technologies.com/products/jprofiler/overview.html"

  app "JProfiler.app"
end
