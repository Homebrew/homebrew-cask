cask 'macdjview' do
  version '0.1.2'
  sha256 'a5869a740b0459ff2e048ff7350d0db12ea26090d6889a2fed903cd297ba7248'

  url "https://downloads.sourceforge.net/windjview/MacDjView/#{version}/MacDjView-#{version}.dmg.gz"
  appcast 'https://sourceforge.net/projects/windjview/rss?path=/MacDjView',
          checkpoint: 'b00d8c762b3b2dbf053c28c279455fd0bce5e025b81eee22246d57c525687aa6'
  name 'MacDjView'
  homepage 'http://windjview.sourceforge.net/'

  app 'MacDjView.app'
end
