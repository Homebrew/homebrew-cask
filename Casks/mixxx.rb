cask 'mixxx' do
  version '2.2.2'
  sha256 '877290bee0825bdf7424990545f71b9c295896e7ab16c1105caa1b6c8297b45f'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  appcast 'https://www.mixxx.org/download/'
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
