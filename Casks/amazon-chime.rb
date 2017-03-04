cask 'amazon-chime' do
  version '4.0.5528'
  sha256 '832c40397be7386df16622936920eeba5fcf7a3722a3a78938b34bbcb6e940a6'

  url "https://clients.chime.aws/mac/releases/Chime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '9086b58df40b65741389716b144114030c67f40f51a80ee3ff39eabd7c0f7673'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
