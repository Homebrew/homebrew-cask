cask 'stretchly' do
  version '1.0.0'
  sha256 '80e053d1eb2db2a5faab1a28afd940439a1049b701bce89adb323559f158da95'

  # github.com/hovancik/stretchly/ was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg"
  appcast 'https://github.com/hovancik/stretchly/releases.atom'
  name 'Stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'Stretchly.app'
end
