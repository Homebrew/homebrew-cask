cask 'iboostup' do
  version '5.5.3'
  sha256 '62b12f45a12e1e90c8f02bc991481d1a21faef0b97859a47be525dab3c4eb3c2'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: '5d44c044ae43b345797a8e803f5b17f43600e924e808aa8fcbc516f3117515b9'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'

  app 'iBoostUp.app'
end
