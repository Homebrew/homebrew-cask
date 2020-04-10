cask 'lens' do
  version '3.2.0'
  sha256 '98175304b0ba86335611e42672b355e351ce03dc7bebf96f5fb10a40bab71459'

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
