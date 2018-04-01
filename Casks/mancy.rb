cask 'mancy' do
  version '3.2.0'
  sha256 '26100c99c1dadd2674a30bbaa72f584b64dfe01fbf7d262109f2e32e28a97c34'

  # github.com/princejwesley/Mancy was verified as official when first introduced to the cask
  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  appcast 'https://github.com/princejwesley/Mancy/releases.atom',
          checkpoint: '4c9bb6d6549c38df42c1a9f54b1167ebb28db79de2121d603c5633a232e328f9'
  name 'Mancy'
  homepage 'http://mancy-re.pl/'

  app 'Mancy-darwin-x64/Mancy.app'
end
