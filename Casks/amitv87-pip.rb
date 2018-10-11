cask 'amitv87-pip' do
  version '1.01'
  sha256 '8920d51bb664645740816b8ca0490b6da23b38642c749b1b3cd6c2f7e6b3df37'

  url "https://github.com/amitv87/PiP/releases/download/#{version}/PiP-#{version}.dmg"
  appcast 'https://github.com/amitv87/PiP/releases.atom'
  name 'PiP'
  homepage 'https://github.com/amitv87/PiP'

  app 'PiP.app'
end
