cask 'comma-chameleon' do
  version '0.5.2'
  sha256 'be08b2088d4065f797d8943ee213882779f99d7130467ed73d0f4d5b73dc02fb'

  # github.com/theodi/comma-chameleon was verified as official when first introduced to the cask
  url "https://github.com/theodi/comma-chameleon/releases/download/#{version}/Comma.Chameleon-darwin-x64.zip"
  appcast 'https://github.com/theodi/comma-chameleon/releases.atom',
          checkpoint: '673f3eb04098a27cb5232c6042d43002302d47609062010b43fc164b0b6e7de6'
  name 'Comma Chameleon'
  homepage 'https://comma-chameleon.io/'

  app 'Comma Chameleon-darwin-x64/Comma Chameleon.app'
end
