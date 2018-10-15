cask 'manager' do
  version '18.10.65'
  sha256 '14e789c9875d925c26c3069c381a433303dfcfd135ef505d3256219c6f75bd1c'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
