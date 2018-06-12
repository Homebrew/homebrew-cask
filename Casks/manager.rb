cask 'manager' do
  version '18.5.45'
  sha256 'acafaed2ec57406e53e3fec564d6c14e3298aba800cc137adb10b90a60430a68'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
