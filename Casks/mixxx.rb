cask 'mixxx' do
  version '2.1.2'
  sha256 'cb6f4d93c74f4336e222e7c2f250d260b364a42309e5c431a8213f7952ac3ef5'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  appcast 'https://www.mixxx.org/download/'
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
