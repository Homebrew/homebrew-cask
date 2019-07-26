cask 'magicavoxel' do
  version '0.99.4'
  sha256 'f42b1ffe2dff0d8aadb806c8359e3cbd53f723a23adcefc5042ce8f8702b4935'

  # github.com/ephtracy/ephtracy.github.io was verified as official when first introduced to the cask
  url "https://github.com/ephtracy/ephtracy.github.io/releases/download/#{version}/MagicaVoxel-#{version}-alpha-macos.zip"
  appcast 'https://github.com/ephtracy/ephtracy.github.io/releases.atom'
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'

  suite staged_path, target: 'MagicaVoxel'

  zap trash: [
               '~/Library/Preferences/EPH.MagicaVoxel.plist',
               '~/Library/Saved Application State/EPH.MagicaVoxel.savedState',
             ]
end
