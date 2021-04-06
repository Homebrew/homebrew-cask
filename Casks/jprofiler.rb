cask "jprofiler" do
  version "12.0"
  sha256 "5f3221d6ef85d7ade5df0fa5f194e05643d7c0066cfb383f5e44810f1c03a9cd"

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast "https://www.ej-technologies.com/feeds/jprofiler/"
  name "JProfiler"
  homepage "https://www.ej-technologies.com/products/jprofiler/overview.html"

  app "JProfiler.app"
end
