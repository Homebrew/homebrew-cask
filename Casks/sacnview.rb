cask 'sacnview' do
  version '2.0.1'
  sha256 '134084a050a57f579482bc51e945838f5b9633e9dc3d7ff05663f1fe60a41d77'

  # github.com/docsteer/sacnview/ was verified as official when first introduced to the cask
  url "https://github.com/docsteer/sacnview/releases/download/v#{version}/sACNView_#{version}.dmg"
  appcast 'https://github.com/docsteer/sacnview/releases.atom'
  name 'sACNView'
  homepage 'http://docsteer.github.io/sacnview/'

  app 'sACNView.app'
end
