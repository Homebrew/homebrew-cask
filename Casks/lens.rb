cask 'lens' do
  version '3.0.1'
  sha256 '484f22e626fc99d0f95b6664ebae8cd36b1360dd17c9aa32ccf155cc5b078df0'

  # github.com/lensapp/lens was verified as official when first introduced to the cask
  url "https://github.com/lensapp/lens/releases/download/v#{version}/Lens-#{version}.dmg"
  appcast 'https://github.com/lensapp/lens/releases.atom'
  name 'Lens'
  homepage 'https://k8slens.dev/'

  app 'Lens.app'

  zap trash: [
               '~/Library/Application Support/Lens',
               '~/Library/Caches/Lens',
               '~/Library/Preferences/com.electron.kontena-lens.plist',
               '~/Library/Saved Application State/com.electron.kontena-lens.savedState',
             ]
end
