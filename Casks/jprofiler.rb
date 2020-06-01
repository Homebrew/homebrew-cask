cask 'jprofiler' do
  version '11.1.3'
  sha256 'b6a32779220e0bc14ec80d499b2e5a012e885ce6be5369ccd809ceee65e18c18'

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
