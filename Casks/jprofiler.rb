cask 'jprofiler' do
  version '11.0.2'
  sha256 'e939cf5610cb7b14d7cf1e596ccb14e86157b49a32c67462fe5f7a18ba729431'

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
