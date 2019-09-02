cask 'bitshares' do
  version '3.1.19061,8.1'
  sha256 '6fa5bc3ae5765f2085024784422fd0ce0ac1b071c8e01a79dc80a77d1add689e'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version.before_comma}#{version.after_comma}/BitShares-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
