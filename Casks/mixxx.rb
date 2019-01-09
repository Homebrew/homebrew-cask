cask 'mixxx' do
  version '2.1.5'
  sha256 'd2936777887719cf6e4622c6512a09b1fa29a6b5b9a6268f8e9a04c8206080a6'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  appcast 'https://www.mixxx.org/download/'
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
