cask 'omnipresence' do
  if MacOS.version == :mavericks
    version '1.2-r220586,10.9'
    sha256 '59a214e6393c984aead4a7242297979dc553d59af9964b5c645636e395794f0f'
  elsif MacOS.version == :yosemite
    version '1.4.1,10.10'
    sha256 '409bf272e7c4dc488f68abadb3e2ef15d4accde10f8ee9babd8b23f522bfe323'
  else
    version '1.6,10.13'
    sha256 '48bcc9f4a3b49f120651cb6d8fd3f1744bf91c4c63e7d30c5d1762eaacc3cd0b'
  end

  url "https://downloads.omnigroup.com/software/MacOSX/#{version.after_comma}/OmniPresence-#{version.before_comma}.dmg"
  appcast 'https://update.omnigroup.com/appcast/com.omnigroup.OmniPresence'
  name 'OmniPresence'
  homepage 'https://www.omnigroup.com/omnipresence'

  depends_on macos: '>= :mavericks'

  app 'OmniPresence.app'
end
