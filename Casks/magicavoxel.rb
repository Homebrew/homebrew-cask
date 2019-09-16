cask 'magicavoxel' do
  version '0.99.4.2'
  sha256 '24a83440e7f71fa52d548d45195f2fa060d754c624bfff518dbd595ac7868de4'

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
