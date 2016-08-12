cask 'reflector' do
  version '2.5.2'
  sha256 '292d0ea66dca94122a4e3a9f388c394d64e357567bb24483d8a315a9ffae90fd'

  url "https://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml',
          checkpoint: '740863505d9d5f9ac9ffa28e14d69562407a7245ebfde44a8d09c7da4036cec1'
  name 'Reflector 2'
  homepage 'https://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Reflector 2.app'
end
