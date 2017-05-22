cask 'amazon-chime' do
  version '4.3.5721'
  sha256 '07132830b91a570c16c2ee78447a0b4c8281f9f63a45afd1ca6098a1b5972413'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '4b70068c134b8c503c2481ab7e73f65deb88bf8dcb15c13b07cb7258c90ec781'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
