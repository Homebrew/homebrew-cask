cask 'blocs' do
  version '2.1.1'
  sha256 '132a8b9fff71d8c83f15b9568f746d44b988ea49216be35a05779c8e91ab7d5f'

  # uistore.io was verified as official when first introduced to the cask
  url 'http://downloads.uistore.io/blocs/version-2/Blocs.zip'
  appcast 'https://uistore.io/blocs/2.0/info.xml',
          checkpoint: '586bab690dd9bb90834a896b5afe05cd5ac0d662f93b0c7b07a9b3bd8f39b25a'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  auto_updates true

  app 'Blocs.app'
end
