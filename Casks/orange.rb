cask 'orange' do
  version '3.20.1'
  sha256 '0002bdc738eaf9d9b0d7f3a5aaafc37c7e6f7f531de1711d2028f43ca76a0d1e'

  url "https://orange.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
