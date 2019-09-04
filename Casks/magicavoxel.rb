cask 'magicavoxel' do
  version '0.99.4.1'
  sha256 'da875b367cb4a9808fcaf906d3c39321c3715b302c5c2c438571698ed1d66238'

  # github.com/ephtracy/ephtracy.github.io was verified as official when first introduced to the cask
  url "https://github.com/ephtracy/ephtracy.github.io/releases/download/#{version.major_minor_patch}/MagicaVoxel-#{version}-alpha-macos.zip"
  appcast 'https://github.com/ephtracy/ephtracy.github.io/releases.atom'
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'

  suite staged_path, target: 'MagicaVoxel'

  zap trash: [
               '~/Library/Preferences/EPH.MagicaVoxel.plist',
               '~/Library/Saved Application State/EPH.MagicaVoxel.savedState',
             ]
end
