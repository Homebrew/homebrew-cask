cask 'mixxx' do
  version '2.1.4'
  sha256 '99bbbf6df635bc238c07a374b890e56597d2f82a6fe073d81accbbaf3a308002'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  appcast 'https://www.mixxx.org/download/'
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
