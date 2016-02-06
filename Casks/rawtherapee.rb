cask 'rawtherapee' do
  if MacOS.release <= :snow_leopard
    version '4.2.171'
    sha256 'c898fd7fa1b0e588bc811f38345b39441ddad71cc0238d568e7407ae4e8b32c8'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.6_64_#{version}.zip"
  else
    version '4.2.521'
    sha256 'c1adae30e6e9749f5dbdca3209f0f980afe782166f9978e3f3b96edb07bbb9e6'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.11_64_#{version}.zip"
  end

  name 'RawTherapee'
  homepage 'http://rawtherapee.com'
  license :gpl

  if MacOS.release <= :snow_leopard
    container nested: "RawTherapee_OSX_10.6_64_#{version}.dmg"
  else
    container nested: "RawTherapee_OSX_10.11_64_#{version}/RawTherapee_OSX_10.11_64_#{version}.dmg"
  end
  depends_on macos: '>= :snow_leopard',
             arch:  :x86_64

  app 'RawTherapee.app'
end
