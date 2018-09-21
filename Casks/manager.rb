cask 'manager' do
  version '18.9.71'
  sha256 '95cd0bc8e2b824b8e4487b853548dad7a10503c36d05b16c32dc190ff6704c7c'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
