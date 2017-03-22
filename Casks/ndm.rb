cask 'ndm' do
  version '1.1.0'
  sha256 '77fa78d5aa51178e0a6e8c93a40ab4410d6330b48d0cc41338ca64b7f3132ae0'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: 'a80307035e4a461cca3b8b624d62327f4e40525abe41fd44a9a6262e67a1741e'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
