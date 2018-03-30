cask 'craftmanager' do
  version '1.0.58'
  sha256 'fc68bbcac847af925d681378920ece200addd30c11ebb0b5fb386972cade71b1'

  url 'https://craft-assets.invisionapp.com/CraftManager/production/CraftManager.zip'
  appcast 'https://craft-assets.invisionapp.com/CraftManager/production/appcast.xml',
          checkpoint: '19b9f0636b25b8ac461d5c325dc8b0d926050f8f8f661b26c5589f3c09d813bc'
  name 'CraftManager'
  homepage 'https://www.invisionapp.com/craft'

  app 'CraftManager.app'
end
