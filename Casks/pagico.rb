cask 'pagico' do
  version '9.2.20200410'
  sha256 'a3a1033b964a66057afe996e467c020781e06206728305026aa4f44f94c81c6e'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
