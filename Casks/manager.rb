cask 'manager' do
  version '18.5.87'
  sha256 '489dc60319d1cf1c2297609405febe33874ebf21a4f66601d824c64373883f2e'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  appcast 'https://www.manager.io/desktop/download/'
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
