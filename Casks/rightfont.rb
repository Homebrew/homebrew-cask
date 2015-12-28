cask 'rightfont' do
  version '3.0.0'
  sha256 '5a195d98fa11247a86b9e0497204950134a9b93aefc30a78b10393087637f29a'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '4af5ef3873cce034f042e6b4d3fe191353bc0dc42037478fcdda2e9d9645abf6'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
