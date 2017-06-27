cask 'aqua-data-studio' do
  version '18.0.17'
  sha256 'ae409a62ec27ec222c898f26725b8359db042604c038d2f3b5567993a538790a'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: '5b86afa4671c7504dd7eb42b9c72f8e90402db42350a0431b2749da2d3accf54'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
