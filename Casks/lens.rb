cask 'lens' do
  version '3.5.0'
  sha256 'a349297fddfa7f313c3000d7e93a564702054ca4241289835e0d854d81847508'

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
