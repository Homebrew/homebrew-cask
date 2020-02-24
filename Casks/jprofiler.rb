cask 'jprofiler' do
  version '11.1.1'
  sha256 'da324d370ec6f4a98c9a1b088242e1d56cf736326fc86601406cbee497e56957'

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
