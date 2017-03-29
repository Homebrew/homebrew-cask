cask 'sococo' do
  version '0.5.3-13375'
  sha256 'da51bad80212950811ded38cdb3fc24258df838eae318a5ca7865403a8840cc9'

  url "https://s.sococo.com/rs/client/mac/Sococo-#{version}.dmg"
  appcast 'https://s.sococo.com/rs/client/latest.json',
          checkpoint: '4fa435c8784708ee384ae2af6fbc2602327abdefdf393ff0db428c34eed55383'
  name 'Sococo'
  homepage 'https://www.sococo.com/'

  depends_on macos: '>= :lion'

  app 'Sococo.app'
end
