cask 'spotmenu' do
  version '1.5'
  sha256 '277938c0adeada123668d36e98f0d22be3c1de95ea9e82e5bb8dbec42fbff297'

  url "https://github.com/kmikiy/SpotMenu/releases/download/v#{version}/SpotMenu.zip"
  appcast 'https://github.com/kmikiy/SpotMenu/releases.atom',
          checkpoint: '339bd2ea324cdf0c08b8c840009ebfb274ec9dd41a983700c7f5d9a6b476c001'
  name 'SpotMenu'
  homepage 'https://github.com/kmikiy/SpotMenu'

  app 'SpotMenu.app'
end
