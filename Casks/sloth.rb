cask 'sloth' do
  version '1.8'
  sha256 '1ec82faf7501afe07e031ce0adae97de29c64c56a4a86c43c1ce0415b7fb417c'

  url 'http://sveinbjorn.org/files/software/sloth.zip'
  appcast 'http://sveinbjorn.org/files/appcasts/SlothAppcast.xml',
          checkpoint: '1aded20000708c43000efc81cc54d484c409315ce0d5c394e637173055fed97a'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  app 'Sloth.app'
end
