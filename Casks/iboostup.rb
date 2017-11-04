cask 'iboostup' do
  version '5.9.55'
  sha256 '990760306e648d365d38b64ebf8f7fc0b8f89378dd9266cb59ed236475b16943'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: '4cefbea13cdd94240b8f0455eab0d50b43b5c047a6029f2d918a8181a5c28be9'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'

  app 'iBoostUp.app'
end
