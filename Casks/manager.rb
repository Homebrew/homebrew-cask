cask 'manager' do
  version '19.1.18'
  sha256 'bd62a7acacb8b5956bc5d7d1c2e2a37f24c1435c669dd27a30437ddc6416a41a'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
