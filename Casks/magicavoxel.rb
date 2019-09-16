cask 'magicavoxel' do
  version '0.99.4.2'
  sha256 '953ba9242c431eb9c4160accdcf70e8aa8c8609da037bef69248e5372caad7b8'

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
