cask 'omnipresence' do
  if MacOS.version == :mavericks
    version '1.2-r220586'
    sha256 '59a214e6393c984aead4a7242297979dc553d59af9964b5c645636e395794f0f'
    osx_version_path = MacOS.version
  elsif MacOS.version == :yosemite
    version '1.4.1'
    sha256 '409bf272e7c4dc488f68abadb3e2ef15d4accde10f8ee9babd8b23f522bfe323'
    osx_version_path = MacOS.version
  else # MacOS.version >= :el_capitan
    version '1.5.1'
    sha256 'e785b910e7413986be45ab14f6a86dc598999461bf3c2a9d0da3759848342ac7'
    osx_version_path = '10.11'
  end

  url "https://downloads.omnigroup.com/software/MacOSX/#{osx_version_path}/OmniPresence-#{version}.dmg"
  name 'OmniPresence'
  homepage 'https://www.omnigroup.com/omnipresence'

  depends_on macos: '>= :mavericks'

  app 'OmniPresence.app'
end
