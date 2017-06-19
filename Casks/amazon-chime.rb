cask 'amazon-chime' do
  version '4.4.5770'
  sha256 '7362d2c196bab810a4848379ac393b0de09015071096652538d68f0fdb2f0fa5'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: 'e544a838d6c19d646a1d1e2750aa31274bf7716cfefa4d6e90cdff39ad84ea94'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
