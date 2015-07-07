cask :v1 => 'angband' do
  version '4.0.0'
  sha256 'a49555fe1a686295978ddfc385077906461b53fa9d5087716636aedb54d662e4'

  versionnumber = /(.*)\.(.*)\.(.*)/.match(version)

  url "http://rephial.org/downloads/#{versionnumber[1]}.#{versionnumber[2]}/Angband-v#{version}-osx.dmg"
  name 'Angband'
  homepage 'http://rephial.org'
  license :gpl

  app 'Angband.app'
end
