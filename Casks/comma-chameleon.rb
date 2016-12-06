cask 'comma-chameleon' do
  version '0.4.4'
  sha256 'd91bf3d38344b2a7dc807a1c9714958280cd39ea531826492361498329b50ce5'

  # github.com/theodi/comma-chameleon was verified as official when first introduced to the cask
  url "https://github.com/theodi/comma-chameleon/releases/download/#{version}/comma-chameleon-darwin-x64.tar.gz"
  appcast 'https://github.com/theodi/comma-chameleon/releases.atom',
          checkpoint: 'bb9c95c0aab908b897585e3fc80acab03ba185ec67d2ecb3f4e3917deed6e3d1'
  name 'Comma Chameleon'
  homepage 'https://comma-chameleon.io/'

  app 'comma-chameleon-darwin-x64/comma-chameleon.app'
end
