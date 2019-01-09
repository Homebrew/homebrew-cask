cask 'jprofiler' do
  version '10.1.4'
  sha256 '7f9cea6d61351d83b0c62f8af28b2d5abe361c723e07f629240c1f8b1412219a'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.ej-technologies.com/feeds/jprofiler/'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
