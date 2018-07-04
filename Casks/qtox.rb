cask 'qtox' do
  version '1.16.0'
  sha256 '88e21ecf403d024e5bbcc9fad4db0ad4fd6f1794abf706b744bff4a039f43793'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
