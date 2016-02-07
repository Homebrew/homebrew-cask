cask 'rawtherapee' do
  if MacOS.release <= :mavericks
    version '4.2.171'
    sha256 'c898fd7fa1b0e588bc811f38345b39441ddad71cc0238d568e7407ae4e8b32c8'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.6_64_#{version}.zip"
  else
    version '4.2.270'
    sha256 'de237c5d0c8ad6137d60c7c2d7de795a8c5ef17d37c87b8dbef6a473d4919477'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.10_64_#{version}.zip"
  end

  name 'RawTherapee'
  homepage 'http://rawtherapee.com'
  license :gpl

  if MacOS.release <= :mavericks
    container nested: "RawTherapee_OSX_10.6_64_#{version}.dmg"
  else
    container nested: "RawTherapee_OSX_10.10_64_#{version}.dmg"
  end
  depends_on macos: '>= :snow_leopard',
             arch:  :x86_64

  app 'RawTherapee.app'
end
