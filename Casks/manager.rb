cask 'manager' do
  version '18.9.48'
  sha256 '9c34182367ca88461069cdebd843a9dbc545a45e6948f71be13eb34a9a52ac41'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
