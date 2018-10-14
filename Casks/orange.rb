cask 'orange' do
  version '3.16.0'
  sha256 'd812c0f534cacef6c9918c35a4281ab536e148b2dad8431330de539274a4f650'

  url "https://orange.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
