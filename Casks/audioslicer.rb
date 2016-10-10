cask 'audioslicer' do
  version '1.1.1'
  sha256 'c0ef4d9b1690943def00ce4c7bb2838ff08cfe0d3ff85d39ca1e4ddc97593d01'

  url "https://downloads.sourceforge.net/audioslicer/AudioSlicer/#{version}/AudioSlicer-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/audioslicer/rss?path=/AudioSlicer',
          checkpoint: '6d9e32d6082008a24ad9d89b196e90ccda2a085eb5a0224e41ad11c63606a963'
  name 'AudioSlicer'
  homepage 'http://audioslicer.sourceforge.net'

  app 'AudioSlicer.app'
end
