cask 'jprofiler' do
  version '11.1'
  sha256 '55e8d301a8566e60b11fef4ecf74babb31ae18c70093a1a77dd485ca008f664a'

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
