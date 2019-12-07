cask 'jprofiler' do
  version '11.0.2'
  sha256 'b3045dd0eb880544fbf203507979f2583e584202d17510c6b003f9480deb6f8b'

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
