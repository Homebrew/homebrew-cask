cask 'mixxx' do
  version '2.1.0'
  sha256 '9c5b8d49939ee2591245f015602256bb258089ce5225eb9adde46298028d920a'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
