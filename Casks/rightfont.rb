cask :v1 => 'rightfont' do
  version '2.2.3'
  sha256 '9c2bc13f0975e83259c60bd3f6818d3a4cf74fa80d4e9c5a99f347ea6d2426da'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => 'f6af8fbf31481112c7382f2917c30a1481c39f94caf8f10f06df8e5ac8517cb6'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
