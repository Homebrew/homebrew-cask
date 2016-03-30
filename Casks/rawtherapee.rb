cask 'rawtherapee' do
  if MacOS.release <= :mavericks
    version '4.2.270'
    sha256 '231f991cf43c92e21aace5ebc34c229542cbd3902633d091a8cd2c049216b29d'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.6_64_#{version}.zip"
  elsif MacOS.release <= :yosemite
    version '4.2.349'
    sha256 'd88f4dc10740b9a105d0c6d72b8d8801957b5e3f2923912afc76b308ebb049bb'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.10_64_#{version}.zip"
  else
    version '4.2.753'
    sha256 'd2210c78a2ca377f0729bf773bb97028d531ab32367e8d935e1c6bfb64192f4d'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.11_64_#{version.sub(%r{^(\d+)\.(\d+).(\d+).*}, '\1.\2-\3')}_master.zip"
  end

  name 'RawTherapee'
  homepage 'http://rawtherapee.com'
  license :gpl

  if MacOS.release <= :mavericks
    container nested: "RawTherapee_OSX_10.6_64_#{version}.dmg"
  elsif MacOS.release <= :yosemite
    container nested: "RawTherapee_OSX_10.10_64_#{version}.dmg"
  else
    container nested: "RawTherapee_OSX_10.11_64_#{version.major_minor}-#{version.patch}_master.dmg"
  end
  depends_on macos: '>= :snow_leopard',
             arch:  :x86_64

  app 'RawTherapee.app'
end
