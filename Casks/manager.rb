cask 'manager' do
  version '18.10.22'
  sha256 'd302511955d68a687c0c96acb8ae614c7f2e50fd36243086942114f38fa49887'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
