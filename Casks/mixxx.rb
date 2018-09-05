cask 'mixxx' do
  version '2.1.3'
  sha256 'db2b6ee5840b0e311f33b77e9937c0402e37c6b27647a59d344be830bd416e10'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  appcast 'https://www.mixxx.org/download/'
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
