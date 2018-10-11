cask 'jprofiler' do
  version '10.1.3'
  sha256 '4e39b942ef9e25221a3bcc5b0c79638d1db8d83a7b076aee889d4fe56535fb54'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
