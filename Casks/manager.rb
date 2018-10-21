cask 'manager' do
  version '18.10.81'
  sha256 '30e857c4f82fb13408ea39e97b5b19bde21704edb555dcbaadfa555aec58c7f4'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
