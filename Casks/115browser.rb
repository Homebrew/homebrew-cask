cask '115browser' do
  version '5.2.4.40'
  sha256 '3662a8be754d199b30953aa2e53a3a6ead6da19c86137c709dfcd8c53b674ed3'

  url "http://down.115.com/client/mac/115br_v#{version}.dmg"
  name '115Browser'
  name '115浏览器'
  homepage 'http://pc.115.com/mac.html'
  license :gratis

  app '115Browser.app'
end
