cask 'kiwix' do
  version '0.9'
  sha256 '98e677aee3c106c6ec5b16791d3be7c22274b3b32cc44a9cce1eeca6275b7bcc'

  url "http://download.kiwix.org/bin/#{version}/kiwix-#{version}.dmg"
  name 'Kiwix'
  homepage 'http://www.kiwix.org/'

  app 'Kiwix.app'
end
