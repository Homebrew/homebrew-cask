cask :v1 => 'rightfont' do
  version '2.3.0'
  sha256 '98b8003f3cb83e57ffe1da76b91300b2e33fd621d45d7d8950af7e29f65065d2'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '1c7fe82ec54aa8b1c2ed3cc0fff5f95702a2cc55c061735777943eb0db442816'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
