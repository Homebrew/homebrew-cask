cask 'qtox' do
  version '1.13.0'
  sha256 '0485ff362d3c14afc92ef34619f53824ca5a1652a0f7a3ea883c891526acd07a'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom',
          checkpoint: '7bddd2fe85e63620b6428ac275d6d55dfc194ccbcd3213aff8a891a364c6881c'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
