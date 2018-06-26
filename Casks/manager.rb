cask 'manager' do
  version '18.5.89'
  sha256 'fd092b789bd0835920c6c3640204b506af4e7fa85ef59ca243b06c26e921a67f'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
