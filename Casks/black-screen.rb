cask 'black-screen' do
  version '0.2.13'
  sha256 '0c00e9468e4fa07f5363b86d8d59328356d49b92394b24acc8a9e14607ba4286'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '19d2356448a8c75135cd51904b45db8eae17461db42681b1afaff1ae9908d34b'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end
