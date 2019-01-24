cask 'manager' do
  version '19.1.25'
  sha256 'f8c556e8afd378657ec6548676b6b4a55771049a9c18ae9d400b6c50ce2b1e8e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
