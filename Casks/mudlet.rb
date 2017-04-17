cask 'mudlet' do
  version '3.0.1'
  sha256 '56ae0589db2f3bc2b9e54ad2d030f09a8edbbbc73bbe17b91f19e13c9aeee5a0'

  url "http://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom',
          checkpoint: 'ac9ebb084ffbca5e331634e5413261c463078f76db82d20581ea5ff108b59292'
  name 'Mudlet'
  homepage 'http://www.mudlet.org/'

  app 'Mudlet.app'
end
