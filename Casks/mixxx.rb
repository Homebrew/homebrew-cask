cask 'mixxx' do
  version '2.2.0'
  sha256 '70cc3c74b7255ec6b91980acb13ec55ae1de44238a830d96ef739a3d20e3109d'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  appcast 'https://www.mixxx.org/download/'
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
