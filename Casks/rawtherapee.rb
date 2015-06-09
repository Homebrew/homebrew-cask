cask :v1 => 'rawtherapee' do

  if MacOS.release <= :mavericks
    version '4.2.171'
    sha256 'c898fd7fa1b0e588bc811f38345b39441ddad71cc0238d568e7407ae4e8b32c8'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.6_64_#{version}.zip"
  else
    version '4.2.210'
    sha256 '4214e100c5374ed4abf7328d95b41ad395e9aa8a722ab66ec7eac40cc8e4eff8'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.10_64_#{version}.zip"
  end

  name 'RawTherapee'
  homepage 'http://rawtherapee.com'
  license :gpl

  if MacOS.release <= :mavericks
    container :nested => "RawTherapee_OSX_10.6_64_#{version}.dmg"
  else
    container :nested => "RawTherapee_OSX_10.10_64_#{version}.dmg"
  end
  app 'RawTherapee.app'

  depends_on :macos => '>= :snow_leopard',
             :arch => :x86_64
end
