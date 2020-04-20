cask 'lens' do
  version '3.3.0'
  sha256 '0b39e404c114c70967b032f4acbc623bd8467cb45f04ba5f0675f6c83ab3009b'

  # github.com/lensapp/lens/ was verified as official when first introduced to the cask
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
