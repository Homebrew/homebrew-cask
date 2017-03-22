cask 'macdjview' do
  version '0.1.2'
  sha256 'a5869a740b0459ff2e048ff7350d0db12ea26090d6889a2fed903cd297ba7248'

  url "https://downloads.sourceforge.net/windjview/MacDjView/#{version}/MacDjView-#{version}.dmg.gz"
  appcast 'https://sourceforge.net/projects/windjview/rss?path=/MacDjView',
          checkpoint: 'e2a88b51a099ccf5fb4d7b199af9e9347f33c9a682b82174d5fab00d24fb1e48'
  name 'MacDjView'
  homepage 'http://windjview.sourceforge.net/'

  app 'MacDjView.app'
end
