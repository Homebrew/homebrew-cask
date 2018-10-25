cask 'manager' do
  version '18.10.84'
  sha256 '1f384396907d11a6d88f300aeac2b8260cb98a809094f90794939bb75fa93d3b'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
