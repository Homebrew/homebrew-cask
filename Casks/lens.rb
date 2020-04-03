cask 'lens' do
  version '3.1.0'
  sha256 '341f82196b8ea97c96fd1b3ac039caaeec76678f27ed38ffa24c6fc5aec9e9fe'

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
