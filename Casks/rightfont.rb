cask 'rightfont' do
  version '3.1.1'
  sha256 '517cfd4d7c0d1aee0bf52bd22127608361594236ddf588a8ff7a79537047097e'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '12ac031027eaf72848d72ebdc46b68ccfee00563475ac6d7a196aabbbf600242'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
