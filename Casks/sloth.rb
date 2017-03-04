cask 'sloth' do
  version '1.7'
  sha256 '3e2e6d53d7a362313d30ba3d93451495d1423473e23859401ce7797d67bc9082'

  url 'http://sveinbjorn.org/files/software/sloth.zip'
  appcast 'http://sveinbjorn.org/files/appcasts/SlothAppcast.xml',
          checkpoint: '97348470bb468d61e02d9327e06157970fedce166b8fdca2fd32a53509ce8a9e'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  app 'Sloth.app'
end
