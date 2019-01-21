cask 'manager' do
  version '19.1.22'
  sha256 '78e321b3d5db043022a87ce584fa535bc1874bbe7b25d65eca9b3e02591c582f'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
