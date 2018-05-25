cask 'manager' do
  version '18.5.23'
  sha256 'a4a4e4eefdf03c6dff2d754655e3590a2aa9646b39f7af872afdee0212f850b8'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
