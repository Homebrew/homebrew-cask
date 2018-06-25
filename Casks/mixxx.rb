cask 'mixxx' do
  version '2.1.1'
  sha256 'c7af9eb5edc8ff60d93743cd7364d75b45d95b16968aed9616c4631c4d647413'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  appcast 'https://www.mixxx.org/download/'
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
