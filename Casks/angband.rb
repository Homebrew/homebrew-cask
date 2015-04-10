cask :v1 => 'angband' do
  version '3.5.1'
  sha256 'de8af2db62de6ce19034bcb5d542e9c161a069d5b240a77d9c0497cb473ea82c'

  versionnumber = /(.*)\.(.*)\.(.*)/.match(version)

  url "http://rephial.org/downloads/#{versionnumber[1]}.#{versionnumber[2]}/Angband-v#{version}-osx.dmg"
  name 'Angband'
  homepage 'http://rephial.org'
  license :gpl

  app 'Angband.app'
end
