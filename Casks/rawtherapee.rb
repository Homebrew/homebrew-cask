cask 'rawtherapee' do
  if MacOS.version <= :mavericks
    version '4.2.270'
    sha256 '231f991cf43c92e21aace5ebc34c229542cbd3902633d091a8cd2c049216b29d'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.6_64_#{version}.zip"
  elsif MacOS.version <= :yosemite
    version '4.2.349'
    sha256 'd88f4dc10740b9a105d0c6d72b8d8801957b5e3f2923912afc76b308ebb049bb'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.10_64_#{version}.zip"
  else
    version '4.2.1025'
    sha256 'e3e8f4b919528884c2e51dcb0cd0b746ea1ca32cae5317495bca80807648f84b'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.11_64_#{version}.zip"
  end

  name 'RawTherapee'
  homepage 'http://rawtherapee.com'

  if MacOS.version <= :mavericks
    container nested: "RawTherapee_OSX_10.6_64_#{version}.dmg"
  elsif MacOS.version <= :yosemite
    container nested: "RawTherapee_OSX_10.10_64_#{version}.dmg"
  else
    container nested: "RawTherapee_OSX_10.11_64_#{version}/RawTherapee_OSX_10.11_64__.dmg"
  end
  depends_on macos: '>= :snow_leopard',
             arch:  :x86_64

  app 'RawTherapee.app'
end
